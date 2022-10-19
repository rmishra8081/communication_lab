clc;
clear all;
close all;
t=-10:1:10;
p=dirac(t);
n=length(p);
qk=zeros(n,n);
for k=0:n-1
    for n=0:n-1
        qk(k+1)=qk(k+1) + (p(n+1).* exp(((-i)*2*pi*n*k)/n));
    end
end
disp(qk)
f=0:n-1;
plot(f,qk+1);
title('FOURIER TRANSFORM OF GIVEN FUNCTION');
xlabel('TIME->t');
ylabel('AMPLITUDE->A');
grid on;