clc; clear all; close all;

%file loading
path = '\\minerfiles.mst.edu\dfs\users\krbzhb\Desktop\Science Data\';
file = 'REDSpectrometerData20170523T223817';
file1 = 'REDSpectrometerData20170523T235435';
file2 ='REDSpectrometerData20170525T232604';
file3 = 'REDSpectrometerData20170525T233110';
file4 = 'REDSpectrometerData20170525T233107';
file5 = 'REDSpectrometerData20170526T003319';
Benzene ='REDSpectrometerData20170526T105141';
Benzene1 = 'REDSpectrometerData20170526T110509';
ext = '.dat';

lookup = [path Benzene1 ext];
fid = fopen(lookup);
data1=textscan(fid, '%s');
fclose(fid);
data = data1{1};

data_length=length(data)/3;
diode=zeros(data_length, 1);

%Sort diode data
for i=1:data_length
    diode(i) = str2double(data{3*i});
end

diode1(1)=diode(1);
for i=1:(length(diode)/2)-1
    diode1(i+1)=diode(2*i+1);
    diode2(i)=diode(2*i);
end

%-------------------------------------------
%plot raw photodiode data
subplot(2,1,1)
plot(diode1);
title('Diode 1');
subplot(2,1,2);
plot(diode2);
title('Diode 2');

FMAX = 800; %Max optical frequency in nm
FMIN = 400;

%make ideal cal signal
f_ref = linspace(FMIN, FMAX, length(diode2));
avg=mean(diode1);
cal_max = max(diode1);
cal_min= min(diode1);
amplitude = (cal_max - cal_min)/2;
calib_ref = amplitude*(sin((f_ref + 50) /9 )) / 2 + avg;

%-----------------------------------------
figure;
plot(f_ref, calib_ref, 'b');
title('Ideal Calibration and Spectrometer Signal');

hold on;
plot(f_ref, diode1(1:240), 'g');
legend('Calibration Signal', 'Diode1');
xlabel('frequency ');
ylabel('Amplitude');

[peaks, locs]=findpeaks(calib_ref);
numpeaks=length(peaks);
distance = (numpeaks - 1)*532;
scale=532/(locs(2)-locs(1)); %from one point in cal signal to the next is 
%equal to a distance equal to scale 
distance = distance + (locs(1)*scale);
distance=distance +((length(calib_ref)-locs(numpeaks))*scale); %distance traveled and x axis of interferogram

x=linspace(0, distance, length(diode2));
figure;
plot(x, diode2);
title('interferogram');
xlabel('distance (nm)');
ylabel('diode1 amplitude');

%do fourier transform
spectra = fft(diode2);

freq=linspace(0, 4000, length(spectra));
[spectrapeaks, location]=findpeaks(real(spectra));

%--------------------------------------------
%plot fourier transform 
freq1 = freq(2:length(freq));
spectra1 = real(spectra(2:length(spectra)));
ampl=real(spectra1);
figure;
plot(freq1, spectra1);
title('Spectra');
xlabel('wavenumber');
ylabel('amplitude');
xlim([-30 4100]);

%grab positive half of symmetric fourier transfrom data
specshift = (length(spectra1)/2)+0.5;
spectra2=spectra1(specshift:length(spectra1));
spectra2=spectra2*2;
freq2 = linspace(0,2000,length(spectra2));

%plot relevant half of fourier transform data
figure;
plot(freq2, spectra2);
title('Positive FFT');
xlabel('wavenumber');
ylabel('amplitude');


%----------------------------
%more manipulation to get just 500+ wavenumber range
mat=[freq1' ampl'];
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

%plot 500+ wavenumber range
figure;
plot(y, relevant_spectra);
title('Spectra');
xlabel('wavenumber');
ylabel('amplitude');

%-----------------------------
