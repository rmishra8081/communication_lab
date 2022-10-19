clc;
clear all;
close all;
T=1;

alpha=0; 
y1=-0.2:0.001:0.2; 
x1=zeros(1,length(y1)); 
x2=zeros(1,length(y1)); 

for m=-100:100
for i=1:1:length(y1)
if abs(y1(i)+(m/T)) <= (1-alpha)/(2*T)
    x1(i)=T;
elseif abs(y1(i)+(m/T))>abs((1-alpha)/(2*T)) && abs(y1(i)+(m/T))<=(1+alpha)/(2*T)
x1(i)=T/2*(1+cos( ((pi*T)/alpha) * (abs(y1(i)+(m/T))-(1-alpha)/(2*T))));
else 
    x1(i)=0;
end 
 x2=x2+x1;
x1=zeros(1,length(y1)); 
end
end
plot(y1,x2);
hold on;
xlabel('Time');
ylabel('Amplitude');
title('shifted raised cosine pulse');
grid on;


alpha=0.25; 
y2=-0.2:0.001:0.2; 
x3=zeros(1,length(y2)); 
x4=zeros(1,length(y2)); 

for m1=-100:100
for i1=1:1:length(y2)
if abs(y2(i1)+(m1/T)) <= (1-alpha)/(2*T)
    x3(i1)=T;
elseif abs(y2(i1)+(m1/T))>abs((1-alpha)/(2*T)) && abs(y2(i1)+(m1/T))<=(1+alpha)/(2*T)
x3(i1)=T/2*(1+cos( ((pi*T)/alpha) * (abs(y2(i1)+(m1/T))-(1-alpha)/(2*T))));
else 
    x3(i1)=0;
end 
 x4=x4+x3;
x3=zeros(1,length(y2)); 
end
end
plot(y2,x4);
hold on;
xlabel('Time');
ylabel('Amplitude');
title('shifted raised cosine pulse');
grid on;


alpha=0.50; 
y3=-0.2:0.001:0.2; 
x5=zeros(1,length(y3)); 
x6=zeros(1,length(y3)); 

for m2=-100:100
for i2=1:1:length(y3)
if abs(y3(i2)+(m2/T)) <= (1-alpha)/(2*T)
    x5(i2)=T;
elseif abs(y3(i2)+(m2/T))>abs((1-alpha)/(2*T)) && abs(y3(i2)+(m2/T))<=(1+alpha)/(2*T)
x5(i2)=T/2*(1+cos( ((pi*T)/alpha) * (abs(y3(i2)+(m2/T))-(1-alpha)/(2*T))));
else 
    x5(i2)=0;
end 
 x6=x6+x5;
x5=zeros(1,length(y3)); 
end
end
plot(y3,x6);
hold on;
xlabel('Time');
ylabel('Amplitude');
title('shifted raised cosine pulse');
grid on;

alpha=1; 
y4=-0.2:0.001:0.2; 
x7=zeros(1,length(y4)); 
x8=zeros(1,length(y4)); 

for m3=-100:100
for i3=1:1:length(y4)
if abs(y4(i3)+(m3/T)) <= (1-alpha)/(2*T)
    x7(i3)=T;
elseif abs(y4(i3)+(m3/T))>abs((1-alpha)/(2*T)) && abs(y4(i3)+(m3/T))<=(1+alpha)/(2*T)
x7(i3)=T/2*(1+cos( ((pi*T)/alpha) * (abs(y4(i3)+(m3/T))-(1-alpha)/(2*T))));
else 
    x7(i3)=0;
end 
 x8=x8+x7;
x7=zeros(1,length(y4)); 
end
end
plot(y4,x8);
hold on;
xlabel('Time');
ylabel('Amplitude');
title('shifted raised cosine pulse');
grid on;