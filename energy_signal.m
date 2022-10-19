clc;
clear all;
close all;
% A-> { e^-10t.u(t) }
t=-30:0.01:30;
u=@(t) 1.*(t>0) ;   %for t>0 value for u(t)=1
x=exp(-10*t).*u(t);
subplot(3,1,1)
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


%B-> u(t)-u(t-15) 

t=-30:0.01:30;
u=@(t) 1.*(t>0) ;           %for t>0 value for u(t)=1
p=u(t)-u(t-15);
subplot(3,1,2)
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


%C-> cos(10*pi*t)u(t)u(2-t) 
t=-30:0.01:30;
u=@(t) 1.*(t>0) ;       %for t>0 value for u(t)=1
q=cos(2*pi*t).*u(t).*u(2-t);
subplot(3,1,3);
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
