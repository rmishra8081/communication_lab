clc;
clear all;
close all;
x=input('Enter the sequence'); 
n1=input('Enter the time sample range'); 
h=fliplr(x); 
n2=-fliplr(n1); 
z=[]; 
for i=1:length(x) 
g=h.*x(i); 
z=[z;g]; 
k=r+c; 
t=2; 
y=[];
cd=0;
while(t<=k) 
for i=1:r 
for j=1:c 
if((i+j)==t) 
cd=cd+z(i,j);
end 
end 
end
 t=t+1;
 y=[y cd];
 cd=0;
end 
nl=min(n1)+min(n2);
nh=max(n1)+max(n2);
t=nl:1:nh; 
subplot(2,1,1)
stem(n1,x)
title('enterd sequence');
ylabel('amplitude');
grid on;
subplot(2,1,2)
stem(t,y); 
title('output of  autocorelation');
ylabel('amplitude');
grid on;