clc;
close all;
clear all;
t1=0:0.001:200; 
fc=20000;
ts=1/(10*fc);
t=t1*ts;
x=cos(2*3.14*2000*t);
subplot(4,1,1)
plot(t,x,'linewidth',2);
title('x(t)');
xlabel('time');
ylabel('amplitude');
grid on;

x=0.5*((cos(2*3.14*22000*t))+(cos(2*3.14*18000*t)));
subplot(4,1,2)
plot(t,x,'linewidth',2);
title('y(t)');
xlabel('time');
ylabel('amplitude');
grid on;

x=0.25*((cos(2*3.14*44000*t))+(2*(cos(2*3.14*2000*t)))+(cos(2*3.14*38000*t)));
subplot(4,1,3)
plot(t,x,'linewidth',2);
title('w(t)');
xlabel('time');
ylabel('amplitude');
grid on;

x=0.5*cos(2*3.14*2000*t);
subplot(4,1,4)
plot(t,x,'linewidth',2);
 title('v(t)');
xlabel('time');
ylabel('amplitude');
grid on;