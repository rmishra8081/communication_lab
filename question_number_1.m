clc;
clear all;
close all;
x=[1 1 1 1 1 1]; %between 0 and 6 it is 1 otherwise 0
h=[1 1 1];   %between 1 and 3 it is 1 otherwise 0
p=length(x);
q=length(h);
m=length(x);
m1=length(h);
subplot(3,1,1);
stem(x,'linewidth',2); 
xlabel('GIVEN INPUT');
ylabel('amplitude');
grid on;
subplot(3,1,2);
stem(h,'linewidth',2); 
xlabel('IMPULSE RESPONSE');
ylabel('amplitude');
grid on;
X=[x,zeros(1,m)];
H=[h,zeros(1,m1)];
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
xlabel('AFTER LINEAR CONVOLUTION RESULT OBTAINED');
ylabel('amplitude');
grid on;