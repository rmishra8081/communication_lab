clc;
close all;
clear all;
t=0:2*pi/100:2*pi;
x=5*sin(2*pi*t/5);
plot(x);
hold on
ans=[0];
tmp=.4;
stepsize=.5;
for i=1:length(x)-1
    if  tmp(i)<=x(i)
        d=1;
        tmp(i+1)=tmp(i)+stepsize;
    
    else
        d=0;
        tmp(i+1)=tmp(i)-stepsize;
    end
    ans=[ans d];
end
stairs(tmp);
hold off
ans


    
