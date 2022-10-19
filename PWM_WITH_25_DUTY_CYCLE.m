clc;
clear all;
close all;
t = 0:0.001:20;
fc = 10; %frequency of carrier signal
fm = 1;  %frequency of message signal
m = 4.*sin(2*pi*fm*t);  %TAKING AMPLITUDE AS 4
subplot(3,1,1);
plot(t,m);
xlabel('time');
ylabel('amplitude');
title('message Signal');
grid on;

% WITH 25% DUTY CYCLE
t = 0:0.001:20;
d=25;
c=square(t,d);
subplot(3,1,2);
plot(t,c);
xlabel('time');
ylabel('amplitude');
title('square wave with 25% duty cycle');
grid on;

n = length(c);
for i = 1:n
    if (m(i)>=c(i))
        pwm(i) = 1;
    else
        pwm(i) = 0;
    end
end
subplot(3,1,3);
plot(t,pwm);
xlabel('time');
ylabel('amplitude');
title('PWM with 25% duty cycle Signal');
grid on;



