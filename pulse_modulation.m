% PULSE AMPLITUDE MODULATION
clc;
clear all;
close all;
fc =25;
fm =fc/10;
fs =100*fc;
t=0:1/fs:1;
m=sin(2*pi*fm*t);
subplot(3,1,1)
plot(t,m);
title('sinusoidal signal');
xlabel('time');
ylabel('amplitude');
grid on;
c=square(2*pi*fc*t)+1;
subplot(3,1,2)
plot(t,c);
title('pulse train');
xlabel('time');
ylabel('amplitude');
grid on;
n=m.*c;
subplot(3,1,3)
plot(t,n);
title('natural PAM signal');
xlabel('time');
ylabel('amplitude');
grid on;