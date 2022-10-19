clc;
clear all;
close all;
T=1;

%FOR ALPHA=0

alpha=0; 
y1=-5:0.001:5; 
x1=zeros(1,length(y1)); 
for i=1:1:length(y1)
if abs(y1(i)) <= (1-alpha)./(2*T)
    x1(i)=T;
elseif abs(y1(i))>abs((1-alpha)./(2*T)) && abs(y1(i))<=(1+alpha)./(2*T)
x1(i)=T/2.*(1+cos( ((pi*T)/alpha) * (abs(y1(i))-(1-alpha)./(2*T))));
else 
    x1(i)=0;
     end 
end
plot(y1,x1);
hold on;
xlabel('Time');
ylabel('Amplitude');
title('raised cosine pulse');
grid on;

%FOR ALPHA=0.25

alpha=0.25; 
y2=-5:0.001:5; 
x2=zeros(1,length(y2)); 
for i=1:1:length(y2)
if abs(y2(i)) <= (1-alpha)./(2*T)
    x2(i)=T;
elseif abs(y2(i))>abs((1-alpha)./(2*T)) && abs(y2(i))<=(1+alpha)./(2*T)
x2(i)=T/2.*(1+cos( ((pi*T)/alpha) * (abs(y2(i))-(1-alpha)./(2*T))));
else 
    x2(i)=0;
     end 
end
plot(y2,x2);
hold on;
xlabel('Time');
ylabel('Amplitude');
title('raised cosine pulse');
grid on;

%FOR ALPHA=0.50

alpha=0.50; 
y3=-5:0.001:5; 
x3=zeros(1,length(y3)); 
for i=1:1:length(y3)
if abs(y3(i)) <= (1-alpha)./(2*T)
    x3(i)=T;
elseif abs(y3(i))>abs((1-alpha)./(2*T)) && abs(y3(i))<=(1+alpha)./(2*T)
x3(i)=T/2.*(1+cos( ((pi*T)/alpha) * (abs(y3(i))-(1-alpha)./(2*T))));
else 
    x3(i)=0;
     end 
end
plot(y3,x3);
hold on;
xlabel('Time');
ylabel('Amplitude');
title('raised cosine pulse');
grid on;

%FOR ALPHA=1

alpha=1; 
y4=-5:0.001:5; 
x4=zeros(1,length(y4)); 
for i=1:1:length(y4)
if abs(y4(i)) <= (1-alpha)./(2*T)
    x4(i)=T;
elseif abs(y4(i))>abs((1-alpha)./(2*T)) && abs(y4(i))<=(1+alpha)./(2*T)
x4(i)=T/2.*(1+cos( ((pi*T)/alpha) * (abs(y4(i))-(1-alpha)./(2*T))));
else 
    x4(i)=0;
     end 
end
plot(y4,x4);
hold on;
xlabel('Time');
ylabel('Amplitude');
title('raised cosine pulse');
grid on;