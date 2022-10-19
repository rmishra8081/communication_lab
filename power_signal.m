clc;
clear all;
close all;
% A-> (1 + exp(-5t))u(t)
t=-30:0.01:30;
u=@(t) 1.*(t>0) ;   %for t>0 value for u(t)=1
x=(1 + exp(-5*t)).*u(t);
subplot(3,1,1)
plot(t,x);
title('GIVEN SIGNAL-> (1 + exp(-5t))u(t)');
xlabel('TIME->t');
ylabel('AMPLITUDE->A');
grid on;
syms t
power1=limit(int((1 + exp(-5*t)).^2,0,t/2)/t,t,inf);
if power1~=inf && power1~=-inf
    disp('the signal is a power signal with power equal to ');
    disp(power1);
end
