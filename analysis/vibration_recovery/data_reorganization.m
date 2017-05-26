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

%-------------------------------------------
subplot(2,1,1)
plot(diode1);
title('Diode 1');
subplot(2,1,2);
plot(diode2);
title('Diode 2');

FMAX = 800; %Max optical frequency in nm
FMIN = 400;

%make ideal diode 2 signal
f_ref = linspace(FMIN, FMAX, length(diode2));
avg = mean(diode2);
avg2=mean(diode1);
cal_max = max(diode2);
cal_min= min(diode2);
amplitude = (cal_max - cal_min)/2;

cal_max2 = max(diode1);
cal_min2= min(diode1);
amplitude2 = (cal_max2 - cal_min2)/2;
calib_ref = amplitude*(sin((f_ref + 50) /20)) / 2 + avg;
calib_ref1 = amplitude2*(sin((f_ref + 50) /5.5)) / 2 + avg2;


ideal_signal = diode2;

%-----------------------------------------
figure;
plot(f_ref, calib_ref, 'b');
title('Ideal Calibration and Spectrometer Signal');

hold on;
plot(f_ref, ideal_signal, 'r');
plot(f_ref, diode1(1:240), 'g');
plot(f_ref, calib_ref1, 'k');
legend('Calibration Signal diode 2', 'Diode2', 'Diode1', 'Calibration Signal diode 1');
xlabel('wavelength / Slide Position (nm)');
ylabel('Amplitude');

%[peaks, locs]=findpeaks(calib_ref);
[peaks, locs]=findpeaks(calib_ref1);
numpeaks=length(peaks);
distance = (numpeaks - 1)*532;
scale=532/(locs(2)-locs(1)); %from one point in cal signal to the next is 
%equal to a distance equal to scale 
distance = distance + (locs(1)*scale);
%distance=distance +((length(calib_ref)-locs(numpeaks))*scale);
distance=distance +((length(calib_ref1)-locs(numpeaks))*scale);

x=linspace(0, distance, length(diode1));
%diode1 = diode1 - mean(diode1);
figure;
plot(x, diode1);
title('interferogram');
xlabel('distance (nm)');
ylabel('diode1 amplitude');

spectra = fft(diode1);
ampl=real(spectra);
freq=linspace(0, 4000, length(spectra));
[spectrapeaks, location]=findpeaks(real(spectra));

%--------------------------------------------
figure;
plot(freq, real(spectra));
title('Spectra');
xlabel('wavenumber');
ylabel('amplitude');
xlim([-30 4100]);

mat=[freq' ampl'];
range_start = 500;
j=0;
for i=1:length(x')
    if mat(i) < range_start
        count=1;
    else
        j=j+1;
        y(j)=mat(i);
    end  
end

chunk = length(x')-length(y');
relevant_spectra = ampl';
relevant_spectra = relevant_spectra(chunk:(length(x')-1));

figure;
plot(y, relevant_spectra);
title('Spectra');
xlabel('wavenumber');
ylabel('amplitude');