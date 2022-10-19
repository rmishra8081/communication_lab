clc;
clear all;
close all;
p=[0,1];
q=[3,-4,1]
subplot(2,1,1)
zplane(p,q);
title('zeros and poles');
xlabel('real axis');
ylabel('imaginary axis');
grid on;