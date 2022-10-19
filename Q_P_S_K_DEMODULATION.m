clc;
clear all;
close all;
n=[1 0 1 0 1]; %ASSUMING THE INPUT BITS STREAM
% PLOTTING THE BITS STREAM
i=1;
t = 0:0.01:length(n);
n1=length(t);
for j=1:length(t)
if t(j)<=i
p(j)=n(i);
else
p(j)=n(i);
i=i+1;
end
end
subplot(4,2,1);
plot(t,p);
xlabel('Time');
ylabel('Amplitude');
title('INITIAL BITS STREAM');
grid on;

%Carrier signals generation (x1,x2)  
a1=1; 
a2=1;  
fc=5;              
 
x1=a1*sin(2*pi*fc*t);    %1st carrier signal 
subplot(4,2,2); 
plot(t,x1);     
title('1st carrier signal'); 
xlabel('Time');
ylabel('Amplitude'); 
grid on 
x2=a2*cos(2*pi*fc*t);    %2nd carrier signal
subplot(4,2,3);
plot(t,x2);             %2nd carrier signal plot 
title('2nd carrier signal');
xlabel('Time'); 
ylabel('Amplitude');
grid on 
for j=1:n1   
    if p(j)==1     
        y1(j)=x1(j); 
    else
        y1(j)=x2(j); 
    end
end
subplot(4,2,4);
plot(t,y1);      
title('QPSK OUTPUT WHEN a1 IS POSITIVE  AND a2 IS POSITIVE');
xlabel('Time');
ylabel('Amplitude'); 
grid on

% GENERATING SIGNAL Y(T) BY ADDING AWGN NOISE

p1=awgn(y1,1);
subplot(4,2,5);
plot(t,p1);
xlabel('Time');
ylabel('Amplitude');
title('y(t) signal when AWGN noise is added');
grid on ;

% GENERATING SIGNAL R(T) BY CONVOLVING

tau=1;
ht1= sin(2*pi*t+tau);
r1=y1.*ht1;
subplot(4,2,6);
plot(t,r1);
ylabel('Amplitude');
title('Match Filter First r1(t)');
grid on;
ht2= cos(2*pi*t+tau);
r2=y1.*ht2;
subplot(4,2,7);
plot(t,r2);
xlabel('Time');
ylabel('Amplitude');
title('Match Filter Second r2(t)');
grid on ;

% RECONSTRUCTING SIGNAL USING OPTIMAL RULE
for j=1:length(t)   
    if  y1(j)==x1(j)
        y2(j)=1;
    else
         y2(j)=0;
    end
end

subplot(4,2,8);
plot(t,y2);
xlabel('Time');
ylabel('Amplitude');
title('reconstructed  signal');
grid on ;