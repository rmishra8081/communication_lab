clc;
clear all;
close all;
% PLOTTING GIVEN FUNCTION
t= -10:0.01:10;
for i=1 : length(t)
    
    if t(i)== 0
        u(i)=1;
    
    else
        u(i)=0;
    
    end
end
subplot(2,1,1)
plot(t,u,'linewidth',2);
title('GIVEN FUNCTION');
xlabel('TIME->t');
ylabel('AMPLITUDE->A');
grid on;

c=fft(u);   %FINDING FOURIER TRANSFORM OF GIVEN FUNCTION
subplot(2,1,2)
plot(abs(c),'linewidth',2);
title('OUTPUT OF FOURIER TRANSFORM');
xlabel('TIME->t');
ylabel('AMPLITUDE->A');
grid on;
