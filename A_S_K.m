clc;
clear all;
close all;
n=[1 0 1 0 1]; %ASSUMING THE INPUT BITS STREAM
% PLOTTING THE BITS STREAM
i=1;
t = 0:0.01:length(n);
for j=1:length(t)
if t(j)<=i
p(j)=n(i);
else
p(j)=n(i);
i=i+1;
end
end
subplot(4,1,1);
plot(t,p);
xlabel('Time');
ylabel('Amplitude');
title('INITIAL BITS STREAM');
grid on;

% MAPPING THE BITS STREAM TO =A OR 0 ACCORDING TO ASK 
for m=1:length(n)
if n(m)==1
o(m)=0;
else if n(m)==0
o(m)=1;
end
end
end

% PLOTTING THE MAPPED BITS STREAM STREAM
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

subplot(4,1,2);
plot(t,y);
xlabel('Time');
ylabel('Amplitude');
title('Mapping bits stream to +A/0');
grid on;

%CARRIER SIGNAL

c = sin(2*pi*t);
subplot(4,1,3);
plot(t,c);
xlabel('Time');
ylabel('Amplitude');
title('Carrier Wave');
grid on ;

% GENERATING SIGNAL X(T)

x=y.*c;
subplot(4,1,4);
plot(t,x);
xlabel('Time');
ylabel('Amplitude');
title('ASK SIGANL RESULT');
grid on ;