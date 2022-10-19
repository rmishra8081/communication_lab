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
 
x1=a1*cos(2*pi*fc*t);    %1st carrier signal 
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



%  CASE  WHEN a1 IS POSITIVE AND a2 IS NEGATIVE 

a1=1; 
a2=-1;              
fc=5;             
x1=a1*cos(2*pi*fc*t);    %1st carrier signal 

x2=a2*cos(2*pi*fc*t);    %2nd carrier signal
for j=1:n1   
    if p(j)==1     
        y1(j)=x1(j); 
    else
        y1(j)=x2(j); 
    end
end
subplot(4,2,5);
plot(t,y1);      
title('QPSK OUTPUT WHEN a1 IS POSITIVE  AND a2 IS NEGATIVE');
xlabel('Time');
ylabel('Amplitude'); 
grid on


%  CASE  WHEN a1 IS NEGATIVE AND a2 IS POSITIVE

a1=-1; 
a2=1;              
fc=5;             
x1=a1*cos(2*pi*fc*t);    %1st carrier signal 

x2=a2*cos(2*pi*fc*t);    %2nd carrier signal
for j=1:n1   
    if p(j)==1     
        y1(j)=x1(j); 
    else
        y1(j)=x2(j); 
    end
end
subplot(4,2,6);
plot(t,y1);      
title('QPSK OUTPUT WHEN a1 IS POSITIVE  AND a2 IS NEGATIVE');
xlabel('Time');
ylabel('Amplitude'); 
grid on


%  CASE  WHEN a1 IS NEGATIVE AND a2 IS NEGATIVE

a1=-1; 
a2=-1;              
fc=5;             
x1=a1*cos(2*pi*fc*t);    %1st carrier signal 

x2=a2*cos(2*pi*fc*t);    %2nd carrier signal
for j=1:n1   
    if p(j)==1     
        y1(j)=x1(j); 
    else
        y1(j)=x2(j); 
    end
end
subplot(4,2,7);
plot(t,y1);      
title('QPSK OUTPUT WHEN a1 IS NEGATIVE  AND a2 IS NEGATIVE');
xlabel('Time');
ylabel('Amplitude'); 
grid on