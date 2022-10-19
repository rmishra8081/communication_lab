clc 
clear all
close all

%Fourier Coefficients
syms t n
N=input('Enter time value');
a0=(1/N)*(int(1,t,0,1)+int(-1,t,1,2));
for n=1:N    
    a(n)=(2/(N*N))*(int(1*cos(n*2*pi*t),t,0,1) + int(-1*cos(n*2*pi*t),t,1,2));
    b(n)=(4/(N*N))*(int(1*sin(n*pi*t),t,0,1) + int(-1*sin(n*pi*t),t,1,2));
end
disp('a0=');
disp(a0)

disp('a(n)=');
disp(a)
subplot(312),plot(a)

disp('b(n)=');
disp(b)
subplot(313),plot(b)