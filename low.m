clc;
clear all;
close all;

wn1 = 2;

wn2 = 10;

wn3 = 20;

fc = 1000;

fs = 5000;

[b,a] = butter(wn1, fc/(fs/2));

[h1,w1]=freqz(b,a);

[b,a] = butter(wn2, fc/(fs/2));

[h2,w2] = freqz(b,a);

[b,a] = butter(wn3, fc/(fs/2));

[h3,w3] = freqz(b,a);

figure,

plot(w1/pi,20*log10(abs(h1)),'k','linewidth',2);

hold on;

%plot(w2/pi,20*log10(abs(h2)),'b','linewidth',2);

%plot(w3/pi,20*log10(abs(h3)),'r','linewidth',2);

xlabel('normalized frequency');

grid on;

ylabel('magnitude response, dB');

legend(num2str(wn1),num2str(wn2),num2str(wn3))

title('low pass Butterworth filter (different filter orders)');