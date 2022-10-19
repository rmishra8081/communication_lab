clc;
clear all;
close all;
x=[2 3 4];
p=0:(length(x)-1);
subplot(3,1,1)
stem(p,x,'linewidth',2);
title('input signal')
xlabel('time');
ylabel('amplitude');
grid on;
h=[1 2 3 4];
q=0:(length(h)-1);
subplot(3,1,2)
stem(q,h,'linewidth',2);
title('response signal')
xlabel('time');
ylabel('amplitude');
grid on;
t2=length(x);
t3=length(h);
z=[];
for i=1:length(x)
    g=h.*x(i);
    z=[z;g];
   
end
[r c]=size(z);
k=r+c;
t=2;
result=[];
sum=0;
while(t<=k)
    for i=1:r
        for j=1:c
            if((i+j)==t)
                sum=sum+z(i,j);
            end
        end
    end
    t=t+1;
    result=[result sum];
    sum=0;
end
disp(result);
t5=length(result);

t1=max(t2,t3);
y2=[];
m=1;
while(m<=t1)
    for i=1
        for j=1:m
            y1=result(i,j);
        end
    end
    y2=[y2 y1];
    m=m+1;
end
disp(y2);
y3=[];
n=t1+1;
while(n<=t5)
    for i=1
        for j=1:n
            y4=result(i,j);
        end
    end
    y3=[y3 y4];
    n=n+1;
end
disp(y3);
m1=length(y2);
m2=length(y3);
m4=m1+m2;
y2=[y2, zeros(1, m4-m1)];
y3=[y3, zeros(1, m4-m2)];
disp(y2);
disp(y3);
y4=y3+y2;
disp(y4);
n1=0:(t5-1);
subplot(3,1,3)
stem(n1,y4,'linewidth',2);
title('circular convolution in time domain approach');
xlabel('time');
ylabel('amplitude');
grid on;
