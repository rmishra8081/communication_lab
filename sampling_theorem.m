clc;
clear all;
close all;
% PLOTTING IMPULSE TRAIN
t=0:100;
for i=1:length(t)
if t(i)>=0
u(i)=1;
end
end
subplot(3,1,1)
stem(t,u)
title('train of impulse');
xlabel('t');
ylabel('amplitude');
grid on;

% PLOTTING SINUSOIDAL SIGNAL
t=0:100; 
f=0.02; 
x=sin(2*pi*t*f); 
subplot(3,1,2); 
plot(t,x); 
xlabel('time');  
ylabel('x(t)'); 
title('sinusoidal signal');
grid on;
 
% PLOTTING THE SAMPLED SIGNAL
s=0:100
z=u.*x;
subplot(3,1,3); 
stem(s,z); 
xlabel('time');  
ylabel('S'); 
title('sampled signal');
grid on;