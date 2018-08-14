clc; clear all; close all;

path = '\\minerfiles.mst.edu\dfs\users\krbzhb\Desktop\Science Data\';
file = 'REDSpectrometerData20170523T223817';
file1 = 'REDSpectrometerData20170523T235435';
ext = '.dat';

lookup = [path file ext];
fid = fopen(lookup);
data1=textscan(fid, '%s');
fclose(fid);
data = data1{1};

data_length=length(data)/3;
diode=zeros(data_length, 1);

for i=1:data_length
    diode(i) = str2double(data{3*i});
end

diode1(1)=diode(1);
for i=1:(length(diode)/2)-1
    diode1(i+1)=diode(2*i+1);
    diode2(i)=diode(2*i);
end

subplot(2,1,1)
plot(diode1);
title('Diode 1');
subplot(2,1,2);
plot(diode2);
title('Diode 2');

%-------------------------------------------
FMAX = 800; %Max optical frequency in nm
FMIN = 400;

f_ref = linspace(FMIN, FMAX, length(diode2));
avg = mean(diode2);
cal_max = max(diode2);
cal_min= min(diode2);
amplitude = (cal_max - cal_min)/2;
calib_ref = amplitude*(sin((f_ref + 50) /10)) / 2 + avg;

% Make a nice spiky waveform with noise as our spectrometer signal
ideal_signal = diode2;

figure('Position', [50 50 1000 900]);
subplot(5,1,1);
plot(f_ref, calib_ref, 'b');
title('Ideal Calibration and Spectrometer Signal');

hold on;
plot(f_ref, ideal_signal, 'r');
legend('Calibration Signal', 'Sample Spectra');
xlabel('wavelength / Slide Position (nm)');
ylabel('Amplitude');
return;
%--------------------------------------
% Generate "Jumpy" sample points. 
% Slide generally advances in halting jumps, with 
sp = zeros(500,1);
for idx = 1:100:500
  sp(idx:idx+100) = idx;
end  
% Smooth
filterCoeff = ones(1, 50) / 50;
sp = filter(filterCoeff, 1, sp);
% Offset
sp = sp + 400;
% Add Random Noise
sp = sp + 5 * randn(length(sp),1);


subplot(5,1,2);
plot( sp, 1:length(sp), 'b'); % Plot where our slide actually is
hold on; plot( (1:length(sp)) + FMIN, 1:length(sp) , 'r'); %Plot where it would be ideally
legend('simulated slide', 'ideal slide');
title('Irregular Slide Movement / Sampling');
xlim([FMIN, FMAX]);
xlabel('Slide Position (nm)');
ylabel('Time');
%calib_observed = calib_ref(sample_points);
%signal_observed = ideal_signal(sample_points);

%--------------------------------------------------------

% Read from the ideal data at the specified sample points
calib_sampled = zeros(length(sp));
signal_observed = zeros(length(sp));
for idx = 1:length(sp)
  % Find the index of the ideal data where the slide is
  idy = find(f_ref > (sp(idx)), 1 );
  if(isempty(idy))
    idy = length(calib_ref);
  end
  %sample the ideal data
  calib_sampled(idx) = calib_ref(idy);
  signal_observed(idx) = ideal_signal(idy);
end

subplot(5, 1, 3); plot(1:length(calib_sampled), calib_sampled, 'b');
hold on; plot(1:length(diode2), diode2, 'r');
legend('Calibration Signal', 'Sample Spectra');
title('Vibration-scrambled signal, 500 samples');
xlabel('Sample Point');
ylabel('Amplitude');

%----------------------------------------------------
% Plot best possible reconstruction results
%--------------------1--------------------------------
subplot(5,1,4); 
[sortedSP, sortIndex] = sort(sp);
calib_sampled_ordered = calib_sampled(sortIndex);
signal_observed_ordered = signal_observed(sortIndex);

plot(sortedSP, calib_sampled_ordered  , '-b.'); hold on;
plot(sortedSP, signal_observed_ordered, '-r.');
xlim([FMIN FMAX]);
title('Theoretical best recovered signal');
xlabel('Wavelenth (nm)');
legend('Calibration', 'sample');

%%---------------------------------------------------
%% Reconstruction Algorithm
%%---------------------------------------------------
calib_sampled = calib_sampled_ordered;
signal_observed=signal_observed_ordered;
recovered_timestamp = zeros(size(signal_observed));
last_pos = 1;
pl = subplot(5,1,5);

for idx=1:length(signal_observed)%1-501
  delete(pl);
  pl = subplot(5,1,5);

  % Find the nearest point to the last one
  % where the simulated calibration signal 
  % matches our observed calibration signal
  loc = find_nearest(calib_sampled(idx), signal_observed, last_pos, 5, 50);
  recovered_timestamp(idx) = f_ref(loc);
  last_pos = loc;
  if loc > last_pos; last_pos = loc; end;
  %assert(last_pos >= lpdebug);
  
  plot(recovered_timestamp(1:idx), signal_observed(1:idx));
  xlim([FMIN-100 FMAX+100]);
  title('Reconstructing Calibration Signal');
  pause(0.01);
end  

%[wavelength calibration spectra] = specRecover(f_ref, calib_ref, calib_sampled, ...
%  signal_observed, FMIN, FMAX, 100, 300);
  
%Recovered_timestamp should match the uneven sampling points  
%%---------------------------------------------------
%% Plot reconstruction results
%%---------------------------------------------------
subplot(5,1,5); 

% Sort recovered timestamp and data vectors
[wavelength, srtidx] = sort(recovered_timestamp); %Sorted Recovered Timestamp (SRT), SRT Index list)
calibration = calib_sampled_ordered;
spectra = signal_observed;

% Plot sorted data
        plot(wavelength, calibration, '-b.');
hold on; plot(wavelength, spectra, '-r.');
title('Algorithmically recovered signal (RESULTS)');
xlim([FMIN, FMAX])
legend('calibration', 'spectra');