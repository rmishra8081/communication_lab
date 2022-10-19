clc;
clear all;
close all;
n=[1 0 1 0 1]; %ASSUMING THE INPUT
N=5;
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

bit_error_theoritical=[];
bit_error_using_Q=[];
for i=0:1:15
j=10^(i/10);
l=sqrt(1/(2*j));
r=m+l.*p;
m_decision=(r>0);
no_of_error=sum(m~=m_decision);
bit_error1=no_of_error/N;
bit_error_theoritical=[bit_error_theoritical bit_error1];
bit_error_using_q=qfunc(sqrt (j/2));
bit_error_using_Q=[bit_error_using_Q bit_error_using_q];

end

subplot(3,2,5);
semilogy(bit_error_using_Q);
hold on;
xlabel('Amplitude');
title('BER FOR BPSK');
grid on;

semilogy(bit_error_theoritical);
hold on;
xlabel('Time');
ylabel('Amplitude');
title('BER');
grid on;



