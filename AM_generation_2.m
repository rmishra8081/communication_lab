%AM GENERATION OR Ka=1

clc;
clear all;
close all;
t=0:0.01:100;
fm=0.05;  % (given value is using)
fc=1;   % (since value is not given so fc is assuming 1000);
ka=1;    % where ka is called as sensivity
Am=2; % where A-> amplitude of message signal(since  value of Am is not given so Am is assuming 2)
xm=Am*sin(2*pi*fm*t);
subplot(3,1,1)
plot(t,xm);
title('message signal');
xlabel('time');
ylabel('amplitude');
grid on;
Ac=2;      % where A-> amplitude of carrier signal(GIVEN)     
xc=Ac*sin(2*pi*fc*t);
subplot(3,1,2)
plot(t,xc);
title('carrier signal');
xlabel('time');
ylabel('amplitude');
grid on;
AM=(Ac+ka*xm).*sin(2*pi*fc*t);
subplot(3,1,3)
plot(t,AM);
title('%AM GENERATION OR Ka=1');
xlabel('time');
ylabel('amplitude');
grid on;