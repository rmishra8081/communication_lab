% ENERGY SIGNAL PART->C
clc;
clear all;
close all;
%C-> cos(10*pi*t)u(t)u(2-t) 
t=-30:0.01:30;
u=@(t) 1.*(t>0) ;       %for t>0 value for u(t)=1
q=cos(2*pi*t).*u(t).*u(2-t);
subplot(1,1,1);
plot(t,q);
title('cos(2*pi*t)*u(t)*u(2-t)');
xlabel('TIME->t');
ylabel('AMPLITUDE->A');
grid on;
syms t
energy3=int(cos(2*pi*t).^2,t,0,2);
if energy3~=inf && energy3~=-inf
    disp ('GIVEN SIGNAL: cos(2*pi*t)u(t)u(t-2)is an energy signal with energy equal to ' );
    disp(energy3);
    disp('power of GIVEN SIGNAL: cos(2*pi*t)u(t)u(t-2) is 0');
end
