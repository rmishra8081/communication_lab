clc;
clear all;
close all;
% GIVEN SIGNAL-> r(t)-r(t-2)
t=-20:0.01:20;
r=@(t) t.*(t>0) ;   
y=r(t)-r(t-2);
subplot(1,1,1)
plot(t,y);
title('GIVEN SIGNAL-> r(t)-r(t-2)');
xlabel('TIME->t');
ylabel('AMPLITUDE->A');
grid on;
syms t 
power2=limit(int((((t * heaviside(t))-( (t-2) * heaviside(t-2) )).^2))/(2*t),t,inf); 
if power2~=inf && power2~=-inf 
    disp('POWER OF A GIVEN SIGNAL:');
 disp(power2); 
 disp('energy of GIVEN SIGNAL: r(t)-r(t-2)  is 0');
end
