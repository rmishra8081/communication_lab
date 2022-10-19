clc;
clear all;
close all;
w=0:0.01:2*pi;
a=[1];
b=[1 -2];
h=freqz(a,b,w);
subplot(2,1,1);
plot(w/pi,abs(h));
ylabel('Magnitude');
subplot(2,1,2);
plot(w/pi,angle(h));
ylabel('Phase');