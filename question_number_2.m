clc;
clear all;
close all;
fs=100;
T=2;
w=2*pi/T;
k=0:1/fs:10-1/fs;
%f=heaviside(t)-heaviside(t-1);
syms t;
N=50;   % mam here value of N is very large so the output will take  some to appear but for smaller values like 5 or 10 output appear easily
n=1:N;

a0=(2/T)*(int(1,t,0,1)+int(-1,t,1,2));
an=(2/T)*(int(1*cos(n*w*t),t,0,1)+int(-1*cos(n*w*t),t,1,2)); % this give the output as symbolic value
bn=(2/T)*(int(1*sin(n*w*t),t,0,1)+int(-1*sin(n*w*t),t,1,2)); % this give the output as symbolic value
%for output to be numerical value 
a2=double(a0);
a1(n)=double(an);
b1(n)=double(bn);
F=a0/2;
for i=1:N
F=F+an(i)*cos(i*w*k) + bn(i)*sin(i*w*k);
end
plot(k,F)
xlabel('t');
ylabel('amplitude');
grid on;