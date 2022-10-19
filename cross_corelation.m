clc;
clear all;
close all;
x=input('Enter the first sequence'); 
n1=input('Enter the first time sample range'); 
h=input ('enter the second sequence');
n2=input('enter the second time sample range');
n2=-fliplr(n2);
h=fliplr(h); 
z=[]; 
for i=1:length(x) 
g=h.*x(i); 
z=[z;g];
end 
[r c]=size(z);
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
stem(t,y); 
grid on;