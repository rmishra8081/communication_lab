clc;
clear all;
close all;

% x1(z)= 2 + Z +3*Z^(-1)  GIVEN FIRTST SEQUENCEC Z-TRANSFORM

x1=[0 1 2 3];  % FINDINDING THE SEQUENCE OF GIVEN  Z-TRANSFORM USING CALCULATION METHOD

% x2(z)=3 + 4*Z^(-1) + 2*Z^(2)  GIVEN SECOND SEQUENCEC Z-TRANSFORM

x2=[2 0 3 4];  % FINDINDING THE SEQUENCE OF GIVEN  Z-TRANSFORM USING CALCULATION METHOD

% x3(z)=x1(z)*x2(z) MEANS CONVOLUTION OF X1(Z) AND X2(Z)

P=length(x1);
P1=length(x2);
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

X=[x1,zeros(1,P)];
H=[x2,zeros(1,P1)];
for i=1:(P+P1-1)
    y(i)=0;
    for j=1:P
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


syms 'z';
nf=-3; %initial value of n 
nl=2;  %final value of n 
x=[0 2 4 9 10 17 12];
syms 'm';
syms 'y';
f(y,m)=(y*(z^(-m)));
disp('RESULT OBTAINED FOR X3(Z)=X1(Z)*X2(Z)');
k=1;
for n=nf:1:nl
    answer(k)=(f((x(k)),n));
   k=k+1;
end
disp(sum(answer));
