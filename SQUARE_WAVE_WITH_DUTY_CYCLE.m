clc;
clear all;
close all;
t= 0:0.001:50;
% WITH 25% DUTY CYCLE
d=25;
x=square(t,d);
subplot(3,1,1);
plot(t,x);
xlabel('time');
ylabel('amplitude');
title('square wave with 25% duty cycle');
grid on;

% WITH 25% DUTY CYCLE
t = 0:0.001:50;
d=50;
x=square(t,d);
subplot(3,1,2);
plot(t,x);
xlabel('time');
ylabel('amplitude');
title('square wave with 50% duty cycle');
grid on;

% WITH 75% DUTY CYCLE
t = 0:0.001:50;
d=50;
x=square(t,d);
subplot(3,1,3);
plot(t,x);
xlabel('time');
ylabel('amplitude');
title('square wave with 75% duty cycle');
grid on;
