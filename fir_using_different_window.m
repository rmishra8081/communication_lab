clc;
clear all;
close all;
rp = input('Enter the passband ripple :');
rs = input('Enter the stopband ripple :');
fp = input('Enter the passband frequency :');
fs = input('Enter the stopband frequency :');
f = input('Enter the sampling frequency :');
wp = 2*fp/f;
ws = 2*fs/f;
num = -20*log10(sqrt(rp*rs))-13;
dem = 14.6*(fs-fp)/f;
n = ceil(num/dem);
n1 = n+1;
if (rem(n,2)==50)
n1 = n;
n = n-1;
end
y = hamming(n1);
% low-pass filter
b = fir1(n,wp,y);
[h,o] = freqz(b,1,256);
m = 20*log10(abs(h));
subplot(2,2,1);
plot(o/pi,m,'linewidth',2);
title('Magnitude Response of LPF');
ylabel('Gain in dB');
xlabel('Normalised Frequency');
grid on;
% high-pass filter
b = fir1(n,wp,'high',y);
[h,o] = freqz(b,1,256);
m = 20*log10(abs(h));
subplot(2,2,2);
plot(o/pi,m,'linewidth',2);
title('Magnitude Response of HPF');
ylabel('Gain in dB');
xlabel('Normalised Frequency');
grid on;
% band pass filter
wn = [wp ws];
b = fir1(n,wn,y);
[h,o] = freqz(b,1,256);
m = 20*log10(abs(h));
subplot(2,2,3);
plot(o/pi,m,'linewidth',2);
title('Magnitude Response of BPF');
ylabel('Gain in dB');
xlabel('Normalised Frequency');
grid on;
% band stop filter
b = fir1(n,wn,'stop',y);
[h,o] = freqz(b,1,256);
m = 20*log10(abs(h));
subplot(2,2,4);
plot(o/pi,m,'linewidth',2);
title('Magnitude Response of BSF');
ylabel('Gain in dB');
xlabel('Normalised Frequency');
grid on;