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
subplot(4,1,1);
plot(t,p);
xlabel('Time');
ylabel('Amplitude');
title('INITIAL BITS STREAM');
grid on;



A=1;            
f1=80;          %1st carrier signal frequency 
f2=50;           %2nd carrier signal frequency   
 
x1=A*cos(2*pi*f1*t);    %1st carrier signal 
subplot(4,1,2); 
plot(t,x1);     
title('1st carrier signal'); 
xlabel('Time');
ylabel('Amplitude'); 
grid on 
x2=A*cos(2*pi*f2*t);    %2nd carrier signal
subplot(4,1,3);
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
subplot(4,1,4);
plot(t,y1);      
title('FSK output');
xlabel('Time');
ylabel('Amplitude'); 
grid on