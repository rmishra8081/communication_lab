clc;
clear all;
close all;

% x1(z)= 2 + 3*z^(-1) + 4*z(-2)  GIVEN FIRTST SEQUENCEC Z-TRANSFORM

x1=[2 3 4];  % FINDINDING THE SEQUENCE OF GIVEN  Z-TRANSFORM USING CALCULATION METHOD

% x2(z)= 3 + 4*z^(-1) + 5*z(-2)  GIVEN SECOND SEQUENCEC Z-TRANSFORM

x2=[3 4 5];  % FINDINDING THE SEQUENCE OF GIVEN  Z-TRANSFORM USING CALCULATION METHOD

% x3(z)=x1(z)*x2(z) MEANS CONVOLUTION OF X1(Z) AND X2(Z)

m=length(x1);
m1=length(x2);
subplot(3,1,1);
stem(x1,'linewidth',2); 
title('INVERSE Z TRANSFORM OF FIRST FUNCTION');
xlabel('time');
ylabel('amplitude');
grid on;
subplot(3,1,2);
stem(x2,'linewidth',2); 
title('INVERSE Z TRANSFORM OF SECOND FUNCTION');
xlabel('time');
ylabel('amplitude');
grid on;

X=[x1,zeros(1,m)];
H=[x2,zeros(1,m1)];
for i=1:(m+m1-1)
    y(i)=0;
    for j=1:m
        if(i-j+1)>0
            y(i)=y(i)+X(j)*H(i-j+1);
        end
    end
end
subplot(3,1,3);
stem(y,'linewidth',2); 
title('RESULT AFTER CONVOLVING X1(Z) AND X2(Z)');
xlabel('time');
ylabel('amplitude');
grid on;