clc;
clear all;
close all;
n =0:4; 
x = 1:5; % sequence x(n) 
k = 0:500; 
w = (pi/500)*k; % [0, pi] axis divided into 501 points.
X = x * (exp(-j*pi/500)) .^ (n'*k); % DTFT using matrix-vector product
magX = abs(X); 
angX = angle(X); 
realX = real(X);
imagX = imag(X); 
subplot(2,2,1);
plot(w/pi,magX)
grid on;
title('Magnitude Part'); 
ylabel('Magnitude')
subplot(2,2,3); 
plot(w/pi,angX); 
grid on;
xlabel('frequency in pi units'); 
title('Angle Part');
ylabel('Radians') 
subplot(2,2,2);
plot(w/pi,realX); 
grid xlabel('frequency in pi units');
title('Real Part'); 
ylabel('Real')
subplot(2,2,4); 
plot(w/pi,imagX);
grid xlabel('frequency in pi units'); 
title('Imaginary Part'); 
ylabel('Imaginary')