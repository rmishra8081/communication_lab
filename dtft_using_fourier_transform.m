clc;
clear all;
close all;
xn=[1 2 3 4 5];
N=5;
xn=xn.';
n=0:N-1;
for k=0:N-1
    y(k+1)=(exp(-j*2*pi*k*n/N))*(xn);
end
disp('x(k)=');
disp(y) 

m=abs(y);
ang=angle(y);
rl=real(y);
img=imag(y);
disp('Magnitude=');
disp(m)
subplot(4,1,1) 
stem(m);
ylabel('magnitude')
grid on;
disp('Angle=');
disp(ang)
subplot(4,1,2) 
stem(ang);
ylabel('angle')
grid on;
disp('Real=');
disp(rl)
subplot(4,1,3)

stem(rl);
ylabel('real part')
grid on;
disp('Imaginary=');
disp(img)
subplot(4,1,4) 

stem(img);
ylabel('imaginary part')
grid on;