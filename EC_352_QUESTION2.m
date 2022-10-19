clc;
close all;
clear all;
t=-10:10;
u=[zeros(1,10) ones(1,11)];
x=t.*u;
plot(x);
xlabel('Time');
ylabel('Amplitude');
title('DELTA MODULATOR');
grid on;
hold on;
p=[];
a=.75;
delta=.75;
for i=1:length(x)-1
    if  a(i)<=x(i)
        d=1;
        a(i+1)=a(i)+delta;
    
    else
        d=0;
        a(i+1)=a(i)-delta;
    end
    p=[p d];
end
stairs(a);
xlabel('Time');
ylabel('Amplitude');
title('DELTA MODULATOR');
grid on;
hold off