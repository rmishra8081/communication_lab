clc
clear all
close all
x1=[1 2 3];
x2=[2 0 3 4];
P=length(x1);
P1=length(x2);

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

syms 'z';
nf=-3; 
nl=2;  
x=[2 4 9 10 17 12];
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
