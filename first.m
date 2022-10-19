clc;
clear all;
close all;
T=1;
t=-5:0.001:5;

%FOR ALPHA=0

alpha1=0;
x1=sinc(t./T).*(cos(pi*alpha1*t./T)./(1-4.*(alpha1*t./T).^2));
plot(t,x1);
hold on;
xlabel('Time');
ylabel('Amplitude');
title('raised cosine pulse');
grid on;

%FOR ALPHA=0.25

alpha2=0.25;
x2=sinc(t./T).*(cos(pi*alpha2*t./T)./(1-4.*(alpha2*t./T).^2));
plot(t,x2);
hold on;
xlabel('Time');
ylabel('Amplitude');
title('raised cosine pulse');
grid on;

%FOR ALPHA=0.50

alpha3=0.50;
x3=sinc(t./T).*(cos(pi*alpha3*t./T)./(1-4.*(alpha3*t./T).^2));
plot(t,x3);
hold on;
xlabel('Time');
ylabel('Amplitude');
title('raised cosine pulse');
grid on;

%FOR ALPHA=1

alpha4=1;
x4=sinc(t./T).*(cos(pi*alpha4*t./T)./(1-4.*(alpha4*t./T).^2));
plot(t,x4);
hold on;
xlabel('Time');
ylabel('Amplitude');
title('raised cosine pulse');
grid on;