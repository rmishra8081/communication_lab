clc;
clear all;
close all;
t0=0.15;
fc=250;
T=0:0.0001:2*t0/3;
c=cos(2*pi*fc*T);  %CARRIER SIGNAL C(T)
title('CARRIER SIGNAL');
subplot(3,1,1)
plot(T,c);
xlabel('TIME');
ylabel('AMPLITUDE');
grid on;

for t=0:0.01:2*t0/3
    if t>=0 && t<=t0/3
        m=1;
        if t>=t0/3 && t<=2*t0/3
        m=-2;
        else
            m=0;
        end
        end
    end
title('MESSAGE SIGNAL');
subplot(3,1,2)
plot(t,m);
xlabel('TIME');
ylabel('AMPLITUDE');
grid on;

        