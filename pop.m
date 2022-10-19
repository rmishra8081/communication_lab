clc;
clear all;
close all;
T=1;

%FOR ALPHA=0

alpha=0; 
y1=-5:0.001:5; 
x1=zeros(1,length(y1)); 
for m=1:10
for i=1:1:length(y1)
if abs(y1(i+m./T)) <= (1-alpha)./(2*T)
    x1(i+m./T)=T;
elseif abs(y1(i+m./T))>abs((1-alpha)./(2*T)) && abs(y1(i+m./T))<=(1+alpha)./(2*T)
x1(i+m./T)=T/2.*(1+cos( ((pi*T)/alpha) * (abs(y1(i+m./T))-(1-alpha)./(2*T))));
else 
    x1(i+m./T)=0;
end 
end
end
plot(y1,x1);
hold on;
xlabel('Time');
ylabel('Amplitude');
title('raised cosine pulse');
grid on;
