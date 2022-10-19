clc;
clear all;
close all;
t0=0.15;
t1=0:0.01:t0/3;
t2=t0/3:0.01:2.*t0/3;
t3=2. *t0/3:0.01:t0;
t=[t1 t2 t3];
Ac=2;
fc=250;
T=0:0.001:2*t0/3;
c=cos(2*pi*fc*T);  %CARRIER SIGNAL C(T)
title('CARRIER SIGNAL');
subplot(3,1,1)
plot(T,c,'linewidth',2);
xlabel('CARRIER SIGNAL');
ylabel('C(t)');
grid on;

m1=ones(size(t1));
m2=-2.*ones(size(t2));
m3=zeros(size(t3));
m=[m1 m2 m3];
subplot (3,1,2)
plot(t,m,'linewidth', 2);
title('Message Signal');
xlabel('t');
ylabel('m(t)');
grid on;
k=1;
u=Ac.*cos(2.*pi.*fc.*t);
y=(1+k*m).*u;
subplot(3,1,3)
plot (t,y,'linewidth', 2);
title('Madulated signal');
xlabel('t');
ylabel('u(t)');
grid on;

