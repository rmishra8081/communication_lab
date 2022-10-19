clc;
clear all;
close all;
x=[1 1 1 1];
N=length(x);
disp(N)
subplot(3,1,1)
stem(x)
title('discrete sequence')
xlabel('n')
ylabel('amplitude')
y=zeros(1,N);
for k=0:N-1
    for n=0:N-1
        y(k+1)=y(k+1)+x(n+1)*exp((-2*i*pi*k*n)/N);
    end
end
disp('y=')
disp(y)
subplot(3,1,1)
stem(y);
title('discrete fourier transform');
xlabel('n')
ylabel('amplitude');

magnitude=abs(y);
subplot(3,1,2)
stem(magnitude);
title('magnitude spectrum')
xlabel('n')
ylabel('amplitude')
Z=phase(y);
subplot(3,1,3)
stem(Z);
title('phase spectrum');
xlabel('n');
ylabel('amplitude');