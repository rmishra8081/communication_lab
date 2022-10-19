clc;
clear all;
close all;
t = 0:0.001:1;
fc =10; %frequency of carrier signal
fm = 1;  %frequency of message signal
m = 4.*sin(2*pi*fm*t);  %TAKING AMPLITUDE AS 4
subplot(3,1,1);
plot(t,m);
xlabel('time');
ylabel('amplitude');
title('message Signal');
grid on;
c = 5.*sawtooth(2*pi*fc*t); %TAKING AMPLITUDE AS 5
subplot(3,1,2);
plot(t,c);
xlabel('time');
ylabel('amplitude');
title('carrier Signal');
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
title('PWM Signal');
grid on;

