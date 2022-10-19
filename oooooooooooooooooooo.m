clc;
clear all;
close all;
T=1;
alpha=0; 
f=-5:0.001:5; 
x1=zeros(1,length(f)); 
for i=1:1:length(f)
if abs(f(i)) <= (1-alpha)./(2*T)
    x1(i)=T;
elseif abs(f(i))>abs((1-alpha)./(2*T)) && abs(f(i))<=(1+alpha)./(2*T)
x1(i)=T/2.*(1+cos( ((pi*T)/alpha) * (abs(f(i))-(1-alpha)./(2*T))));
else 
    x1(i)=0;
     end 
end
plot(f,x1);
hold on;
xlabel('Time');
ylabel('Amplitude');
title('raised cosine pulse');
grid on;

alpha=0.25; 
f=-5:0.001:5; 
x2=zeros(1,length(f)); 
for i=1:1:length(f)
if abs(f(i)) <= (1-alpha)./(2*T)
    x2(i)=T;
elseif abs(f(i))>abs((1-alpha)./(2*T)) && abs(f(i))<=(1+alpha)./(2*T)
x2(i)=T/2.*(1+cos( ((pi*T)/alpha) * (abs(f(i))-(1-alpha)./(2*T))));
else 
    x2(i)=0;
     end 
end
plot(f,x2);
hold on;
xlabel('Time');
ylabel('Amplitude');
title('raised cosine pulse');
grid on;

alpha=0.50; 
f=-5:0.001:5; 
x3=zeros(1,length(f)); 
for i=1:1:length(f)
if abs(f(i)) <= (1-alpha)./(2*T)
    x3(i)=T;
elseif abs(f(i))>abs((1-alpha)./(2*T)) && abs(f(i))<=(1+alpha)./(2*T)
x3(i)=T/2.*(1+cos( ((pi*T)/alpha) * (abs(f(i))-(1-alpha)./(2*T))));
else 
    x3(i)=0;
     end 
end
plot(f,x3);
hold on;
xlabel('Time');
ylabel('Amplitude');
title('raised cosine pulse');
grid on;

alpha=1; 
f=-5:0.001:5; 
x4=zeros(1,length(f)); 
for i=1:1:length(f)
if abs(f(i)) <= (1-alpha)./(2*T)
    x4(i)=T;
elseif abs(f(i))>abs((1-alpha)./(2*T)) && abs(f(i))<=(1+alpha)./(2*T)
x4(i)=T/2.*(1+cos( ((pi*T)/alpha) * (abs(f(i))-(1-alpha)./(2*T))));
else 
    x4(i)=0;
     end 
end
plot(f,x4);
hold on;
xlabel('Time');
ylabel('Amplitude');
title('raised cosine pulse');
grid on;