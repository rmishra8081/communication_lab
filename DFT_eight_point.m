clc;
clear all;
close all;
xn=[1 2 3 4];     % USING GIVEN SEQUENCE {1 2 3 4}
N=8;               % USING GIVEN VALUE OF N THAT IS 8
L=length(xn);
if N < L
    disp('N should be always greater than or equal to L');
end
xn=[xn zeros(1,N-L)];
   for k=0:N-1
    for n=0:N-1
        wn=exp(-j*2*pi*k*n/N);
        x1(k+1,n+1)=wn;
    end
    end
    xk=x1*xn';
k=0:N-1;
subplot(2,1,1)
stem(k,abs(xk),'linewidth',2);
xlabel('k');
ylabel('XK');
grid on;
title('magnitude plot');
subplot(2,1,2)
stem(k,angle(xk),'linewidth',2);
xlabel('k');
ylabel('XK');
title('phase plot');
grid on;

