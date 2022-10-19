clc;
clear all;
close all;
x=[-2,2];
y=[1 1];
subplot(2,2,1)
stem(x,y,'linewidth',2);
title('FREQUENCY SPECTRUM OF X(t)')
xlabel('FREQUENCY in (K Hz)')
ylabel('X(t)');
grid on;
x1=[-22,-18,18,22];
y1=[0.5 0.5 0.5 0.5];
subplot(2,2,2)
stem(x1,y1,'linewidth',2);
title('FREQUENCY SPECTRUM OF Y(t)')
xlabel('FREQUENCY in (K Hz)');
ylabel('Y(t)');
grid on;

x2=[-42,-38,3,2,38,42];
y2=[0.25 0.25 0.5 0.5 0.25 0.25];
subplot(2,2,3)
stem(x2,y2,'linewidth',2);
title('FREQUENCY SPECTRUM OF W(t)');
xlabel('FREQUENCY in (K Hz)');
ylabel('W(t)');
grid on;

x3=[-2 2];
y3=[0.5 0.5];
subplot(2,2,4)
stem(x3,y3,'linewidth',2);
title('FREQUENCY SPECTRUM OF V(t)')
xlabel('FREQUENCY in (K Hz)')
ylabel('V(t)');
grid on;