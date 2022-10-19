clc;
clear all;
close all;
t = 0:2*pi/50:2*pi;
m = 2.*sin(t);  
plot(m);
delta=0.4;
hold on;
xn=0;
l=length(m);
for i=1:l-1
    if m(i)>=xn(i)
        d(i)=1;
        xn(i+1)=xn(i)+delta;
    else
        d(i)=0;
         xn(i+1)=xn(i)-delta;
    end
end
stairs(xn);
hold off;
xlabel('time');
ylabel('amplitude');
title('1->message signal 2->delta modulated signal');
grid on;
