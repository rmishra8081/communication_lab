clc; 
close all;
clear all ;

n=[1 0 1 0];    %ASSUMING THE INPUT BITS STREAM
N=length(n);  
fs = 1000*N;   
t=0:1/fs:N;   
N1=length(t);  
i=1;  
for j=1:N1  
    if t(j)<=i 
        x(j)=n(i); 
    else
        i=i+1;  
    end
end 
subplot(4,2,1); 
plot(t,x);     
title('Input message signal'); 
xlabel('Time'); 
ylabel('Amplitude');
grid on   
a=2;            
f1=10;       %1st carrier signal frequency 
f2=5;        %2nd carrier signal frequency 
x1=a*sin(2*pi*f1*t); 
subplot(4,2,2);
plot(t,x1);      
title('1st carrier signal'); 
xlabel('Time');
ylabel('Amplitude');
grid on 
x2=a*sin(2*pi*f2*t);    
subplot(4,2,3);
plot(t,x2);           
xlabel('Time'); 
ylabel('Amplitude');
grid on;
for j=1:N1   
    if x(j)==1 
        y1(j)=x1(j); 
    else
        y1(j)=x2(j);     
    end
end
subplot(4,2,4);
  
plot(t,y1);        
title('Modulated FSK output'); 
xlabel('Time');
ylabel('Amplitude');
grid on   

% GENERATING SIGNAL Y(T) BY ADDING AWGN NOISE

p=awgn(y1,1);
subplot(4,2,5);
plot(t,p);
xlabel('Time');
ylabel('Amplitude');
title('y(t) signal when AWGN noise is added');
grid on ;

% GENERATING SIGNAL R(T) BY CONVOLVING

tau=1;
ht=x1-x2;
r=conv(p,ht);
subplot(4,2,6);
plot(r);
xlabel('Time');
ylabel('Amplitude');
title('r(t) signal');
grid on ;


% RECONSTRUCTING SIGNAL USING OPTIMAL RULE
for j=1:N1     
    if y1(j)==x1(j) 
        y2(j)=1;    
    else
        y2(j)=0;   
    end
end
subplot(4,2,7); 
plot(t,y2);   
title('Demodulated FSK signal');
xlabel('Time'); 
ylabel('Amplitude'); 
grid on;