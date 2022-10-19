clc;
clear all;
close all;
x=[1 1 1 1];
N=length(x);
disp(N);
subplot(3,1,1)
stem(x,'linewidth',2);
title('GIVEN SEQUENCE');
xlabel('n');
ylabel('AMPLITUDE');
y=zeros(1,N);
for k=0:N-1
    for n=0:N-1
        y(k+1)=y(k+1)+x(n+1)*exp((-2*i*pi*k*n)/N);
    end
end
disp('y=')
disp(y)
subplot(3,1,1)
stem(y,'linewidth',2);
title('DISCRETE  FOURIER TRANSFORM');
xlabel('n')
ylabel('AMPLITUDE');
grid on;
magnitude=abs(y);
subplot(3,1,2)
stem(magnitude,'linewidth',2)
title('MAGNITUDE SPECTRUM')
xlabel('n')
ylabel('AMPLITUDE')
Z=phase(y);
subplot(3,1,3)
stem(Z,'linewidth',2);
title('PHASE SPECTRUM');
xlabel('n');
ylabel('AMPLITUDE');
grid on;