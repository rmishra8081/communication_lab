clc;
clear all;
close all;
t = 0:0.01:5;
fc = 10; %frequency of carrier signal
fm = 1;  %frequency of message signal
m = 4.*sin(2*pi*fm*t);  %TAKING AMPLITUDE AS 4
subplot(3,1,1);
plot(t,m);
xlabel('time');
ylabel('amplitude');
title('message Signal');
grid on;

t = 0:0.01:5;
c=square(2*pi*fc*t);
subplot(3,1,2);
plot(t,c);
xlabel('time');
ylabel('amplitude');
title('square wave');
grid on;

n = length(c);
for i = 1:n
    if (m(i)>=c(i))
        pwm(i) = 1;
    else
        pwm(i) = 0;
    end
end

for i=1:length(c)
    if pwm(i)==1 && pwm(i+1)==0
        ppm(i)=1;
    else
        ppm(i)=0;
    end
end
subplot(3,1,3);
plot(t,ppm);
xlabel('time');
ylabel('amplitude');
title('PPM Signal');
grid on;

