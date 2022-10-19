clc;
close all;
clear all;
clf;
 
bit = input("enter the number of bits");
a = 0.7;
Fs = 6000;     
T = 1/2000;     
t = -5*T:1/Fs:5*T;
t = t+1e-10; 
p = (sin(pi*t/T)./(pi*t/T)).*(cos(a*pi*t/T)./(1-(2*a*t/T).^2));
c = 0; 
%In the for loop first we are storing the value bit by bitb and after
%storing we are calculating its length  and then  padding zeros  and finally by using filter function we are filtering the singnal to plot eye diagram foe given number of bits 
for j = bit-1:-2:-(bit-1)
    for i = bit-1:-2:-(bit-1)
    
            A = [-(j),-(i)];  
            x = round(rand(1,100));   
            x = x+1;
            pam =A(x);
            l = length(pam);
            n = Fs*T; 
            pam1 = zeros(size(1:n*l)); 
            pam1(1:n:n*l) = pam;
        

            mlt = filter(p,1,pam1);


            for i = 16:3+3:50
                hold on
                plot(mlt(i:i+6));
            end
        
    
        hold on
    end
end