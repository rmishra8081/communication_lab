clc;
close all;
clear all;
b=[1,0];
a=[1,-0.9];
subplot(3,1,1)
zplane(b,a);
title('zeros and poles')

w=[0:1:500]*pi/500;
X= (exp(j*w) ./ (exp(j*w)-0.9*ones(1,501)));
magX=abs(X);
angX=angle(X);
subplot(3,1,2)
plot(w/pi,magX)
title('magnitude')
xlabel('real part')
ylabel('imaginary part')
subplot(3,1,3)
plot(w/pi,angX)
title('phase')
xlabel('real part')
ylabel('imaginary part')