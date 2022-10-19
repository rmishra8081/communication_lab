% GIVEN SIGNAL-> (1 + exp(-5t))u(t)
clc;
clear all;
close all;
t=-30:0.01:30;
u=@(t) 1.*(t>0) ;   %for t>0 value for u(t)=1
x=(1 + exp(-5*t)).*u(t);
subplot(2,1,1)
plot(t,x);
title('GIVEN SIGNAL-> (1 + exp(-5t))u(t)');
xlabel('TIME->t');
ylabel('AMPLITUDE->A');
grid on;
syms t
power1=limit(int((1 + exp(-10*t)).^2,0,t/2)/t,t,inf);
if power1~=inf && power1~=-inf
    disp('POWER OF A SIGNAL:');
    disp(power1);
end


% GIVEN SIGNAL-> r(t)-r(t-2)
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
    disp('POWER OF A GIVEN SIGNAL:');
 disp(power2); 
end
