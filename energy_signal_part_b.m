% ENERGY SIGNAL PART->B
clc;
clear all;
close all;
%B-> u(t)-u(t-15) 
t=-30:0.01:30;
u=@(t) 1.*(t>0) ;          
p=u(t)-u(t-15);
subplot(1,1,1)
plot(t,p);
title('GIVEN SIGNAL-> u(t)-u(t-15)');
xlabel('TIME->t');
ylabel('AMPLITUDE->A');
grid on;
syms t
energy2=int(1.^2,t,0,15);
if energy2~=inf && energy2~=-inf
    disp ('GIVEN SIGNAL: u(t)-u(t-15) is an energy signal with energy equal to ' );
    disp(energy2);
    disp('power of GIVEN SIGNAL: u(t)-u(t-15) is 0');
end
