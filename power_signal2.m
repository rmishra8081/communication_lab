clc;
clear all;
close all;
% A-> r(t)-r(t-1)
t=-20:0.01:20;
r=@(t) t.*(t>0) ;   
y=r(t)-r(t-2);
subplot(2,1,2)
plot(t,y);
title('GIVEN SIGNAL-> r(t)-r(t-2)');
xlabel('TIME->t');
ylabel('AMPLITUDE->A');
grid on;
syms t 
power2=limit(int((((t * heaviside(t))-( (t-2) * heaviside(t-2) )).^2))/(2*t),t,inf); 
if power2~=inf && power2~=-inf 
    disp('The SECOND SIGNAL: r(t)-r(t-2)is a power signal with power equal to ');
 disp(power2); 
end