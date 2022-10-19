clc;
clear all;
close all;
n=[1 0 1 0 1]; %ASSUMING THE INPUT

for m=1:length(n)
if n(m)==0
o(m)=1;
else
o(m)=-1;
end
end
i=1;
t = 0:0.01:length(n);
for j=1:length(t)
if t(j)<=i
y(j)=o(i);
else
y(j)=o(i);
i=i+1;
end
end
subplot(3,2,1);
plot(t,y);
xlabel('Time');
ylabel('Amplitude');
title('Pulse for +A/-A');
grid on;

%CARRIER SIGNAL

c = sin(2*pi*t);
subplot(3,2,2);
plot(t,c);
xlabel('Time');
ylabel('Amplitude');
title('Carrier Wave');
grid on ;

% GENERATING SIGNAL X(T)

x=y.*c;
subplot(3,2,3);
plot(t,x);
xlabel('Time');
ylabel('Amplitude');
title('x(t)');
grid on ;

% GENERATING SIGNAL Y(T) BY ADDING AWGN NOISE

p=awgn(x,1);
subplot(3,2,4);
plot(t,p);
xlabel('Time');
ylabel('Amplitude');
title('y(t) signal when AWGN noise is added');
grid on ;

% GENERATING SIGNAL R(T) BY CONVOLVING

tau=1;
ht= sin(2*pi*(t+tau));
r=conv(y,ht);
subplot(3,2,5);
plot(r);
xlabel('Time');
ylabel('Amplitude');
title('r(t) signal');
grid on ;

% RECONSTRUCTING SIGNAL USING OPTIMAL RULE
for j=1:length(t)
    if r(j)>=0
        detection(j)=1;
    else
        detection(j)=0;
    end
end
subplot(3,2,6);
plot(t,detection);
xlabel('Time');
ylabel('Amplitude');
title('reconstructed  signal');
grid on ;
