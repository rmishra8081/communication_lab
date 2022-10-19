clc;
clear all;
close all;
t=0:0.01:2;
fm=input('enter the frequency of message signal');
fc=input('enter the frequency of carrier signal');
m=input('enter the the modultaion index');
A=5;     % where A-> amplitude
xm=A*sin(2*pi*fm*t);
subplot(3,1,1)
plot(t,xm);
xlabel('time');
ylabel('amplitude');
xc=A*sin(2*pi*fc*t);
subplot(3,1,2)
plot(t,xc);
xlabel('time');
ylabel('amplitude');
AM=(A+m*xm).*sin(2*pi*fc*t);
subplot(3,1,3)
plot(t,AM);
xlabel('time');
ylabel('amplitude');
