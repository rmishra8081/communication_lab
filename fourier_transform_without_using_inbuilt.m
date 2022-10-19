%FOURIER TRANSFORM OF GIVEN FUNCTION
clc;
clear all;
close all;


% PLOTTING GIVEN FUNCTION
t= -10:0.01:10;
for i=1 : length(t)
    
    if t(i)== 0
        u(i)=1;
    
    else
        u(i)=0;
    
    end
end
subplot(2,1,1)
plot(t,u,'linewidth',2);
title('GIVEN FUNCTION');
xlabel('TIME->t');
ylabel('AMPLITUDE->A');
grid on;


x=dirac(t);
N=length(x);
xk=zeros(N,N)
for k=0:N-1
    for n=0:N-1
        xk(k+1)=xk(k+1)+(x(n+1).*exp(((-i)*2*pi*n*k)/N));
    end
end
disp('the fourier transform of given function');
disp(xk)
f=0:N-1;
subplot(2,1,2)
plot(f,xk+1,'linewidth',2);
title('FOURIER TRANSFORM OF GIVEN FUNCTION');
xlabel('TIME->t');
ylabel('AMPLITUDE->A');
grid on;
