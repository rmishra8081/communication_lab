% ENERGY SIGNAL PART->A
clc;
clear all;
close all;
% A-> { e^-10t.u(t) }
t=-30:0.01:30;
u=@(t) 1.*(t>0) ;   %for t>0 value for u(t)=1
x=exp(-10*t).*u(t);
subplot(1,1,1)
plot(t,x);
title('GIVEN SIGNAL->e^{(-10t)}*u(t)');
xlabel('TIME->t');
ylabel('AMPLITUDE->A');
grid on;
syms t
energy1=int(exp(-10*t).^2,t,0,inf);
if energy1~=inf && energy1~=-inf
    disp ('GIVEN SIGNAL: e^{(-10t)}*u(t)  is an energy signal with energy equal to ' );
    disp(energy1);
    disp('power of GIVEN SIGNAL: e^{(-10t)}*u(t) is 0');
end
