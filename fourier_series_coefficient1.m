clc;
clear;
close all;
syms t; 
p=0:5;
T=input('enter the time period:');  
f=1;   %WHERE A IS THE AMPLITUDE  
w=2*pi/T;   
n1=input('enter the time sample value upto which you have to find coefficient:');
A1=(1/T)*int(f,t,0,1);
A2=(1/T)*int(-f,t,0,1);
a0=double(A1)+double(A2);
for n=1:n1
a(n)=(2/T)*(int(f*cos(n*w*t),t,0,1)+int(-f*cos(n*w*t),t,1,2));    % this give the output as symbolic value
b(n)=(2/T)*(int(f*sin(n*w*t),t,0,1)+int(-f*sin(n*w*t),t,1,2));    % this give the output as symbolic value
end

%for output to be numerical value 
disp('the value for a0 is:');
disp(a0);
plot(a0,'linewidth',2);
disp('the value for an is:');
disp(a);
subplot(2,1,1)
plot(a,'linewidth',2);
title('FOURIER COEFFICIENT an');
xlabel('TIME->t');
ylabel('AMPLITUDE->A');
grid on;
subplot(2,1,2)
disp('the value for  bn is:');
disp(b);
plot(b,'linewidth',2);
title('FOURIER COEFFICIENT bn');
xlabel('TIME->t');
ylabel('AMPLITUDE->A');
grid on;
