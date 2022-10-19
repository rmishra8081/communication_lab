clc;
clear all;
close all;
x=input('ENTER THE INPUT');
h=input('ENTER THE IMPULSE RESPONSE');
p=length(x);
q=length(h);
r=max(p,q);
s=p-q;
if(s>=0)
    x=x;
    h=[h,zeros(1,s)];
else
    z=[z,zeros(1,-s)];
    h=h;
end

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

for n=1:r;
    y(n)=0;
    for k=1:r
        j=n-(k-1);
        0;
        if(j<=0)
            j=j+r;
        end
        y(n)=y(n)+x(k)*h(j);
    end
end

subplot(3,1,3);
stem(y,'linewidth',2); 
xlabel('AFTER CIRCULAR CONVOLUTION RESULT OBTAINED');
ylabel('amplitude');
grid on;

    