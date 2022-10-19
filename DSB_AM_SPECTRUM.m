clc;
clear all;
close all;
x=[13.3,20];
y=[-2 1];
subplot(2,1,1)
stem(x,y,'linewidth',2);
title('FREQUENCY SPECTRUM OF m(t)')
xlabel('FREQUENCY(in HZ)')
ylabel('m(t)');
grid on;
x1=[-216.67,-230,-250,-270,-283.35,216.67,230,250,270,283.35];
y1=[-2 1 1 1 -2 -2 1 1 1 -2];
subplot(2,1,2)
stem(x1,y1,'linewidth',2);
title('FREQUENCY SPECTRUM OF MODULATED SIGNAL S(t)')
xlabel('FREQUENCY (in HZ)')
ylabel('S(t)');
grid on;