clc;
clear all;
close all;
syms t; 
T=input('enter the time period:');  
f=1;   %WHEN THE AMPLITUDE IS 1 BETWEEN 0 AND 1
w=2*pi/T;   
n1=input('enter the time sample value upto which you have to find coefficient:');
a=(1/T)*int(f,t,0,1);
a0=double(a);
for n=1:n1
a(n)=(2/T)*int(f*cos(n*w*t),t,0,1);    % this give the output as symbolic value
b(n)=(2/T)*int(f*sin(n*w*t),t,0,1);    % this give the output as symbolic value

%for output to be numerical value 
a1(n)=double(a(n));
b1(n)=double(b(n));

end


syms t; 
%f1=-1;   %WHEN THE AMPLITUDE IS -1
w=2*pi/T;
A=(1/T)*int(-1,t,1,2);
A0=double(A);
for n=1:n1
A(n)=(2/T)*int(-1*cos(n*w*t),t,1,2);    % this give the output as symbolic value
B(n)=(2/T)*int(-1*sin(n*w*t),t,1,2);    % this give the output as symbolic value

%for output to be numerical value 
A1(n)=double(A(n));
B1(n)=double(B(n));

end


%FINAL RESULT
AB0=a0+A0;   % ASSUME  AB0    AS a0
for n=1:n1
AB1(n)=double((a(n)+A1(n)));         % ASSUME  AB1    AS an
AB2(n)=double((a(n)+A1(n)));          % ASSUME  AB2    AS bn
end


