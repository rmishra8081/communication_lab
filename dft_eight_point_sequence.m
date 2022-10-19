clc;
clear all;
close all;
xn=[1 2 3 4];    % USING GIVEN SEQUENCE {1 2 3 4}
n=0:3;           % CONSIDER THE TIME SAMPLE STARTS FROM 0
N=8;

if(N >= length(xn))
    for i=1:N-length(xn)
        xn=[xn 0];
    end
end
X=[];
xk=0;
for k=0:N-1
    for n=0:N-1
        xk=xk+xn(n+1)* exp(-j*2*pi*n*k/N);
    end
    X=[X xk];
    xk=0;
end
disp('8-POINT DISCRETE FOURIER TRANSFORM IS:');
disp(X);

