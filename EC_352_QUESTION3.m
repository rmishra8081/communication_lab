clc;
clear all;
close all;
N=10;
m=randi([0 1],1,N);

for i=1:N
    if m(i)==0
        x(i)=1;
    else
        x(i)=0;
    end
end
bit_error_value=[];
ber_theoritical=[];
ber_practical=[];

for i1=0:1:16
j=10^(i1/10);
k=sqrt(1/(2*j));
r=x+k.*randi(1,N);
m_1=(r>0);
no_of_error=sum(m~=m_1);
ber_l=no_of_error/N;
bit_error_value=[bit_error_value ber_l];
ber_th_er=0.5*erfc(sqrt (j) ) ; 
ber_theoritical=[ber_theoritical ber_th_er];
ber_calculation_q=qfunc(sqrt (j/2));
ber_practical=[ber_practical ber_calculation_q];
end
semilogy(bit_error_value);
hold on;
xlabel('Time');
ylabel('Amplitude');

grid on;



for i = 1:N
    if m(i) ==0
       
        x2(i) = -1;
     
    else
         x2(i) = 1;
        
    end
end   
ber_theoritica2 = [];
ber_practical2 = [];
for i = 0:1:16
j = 10^(i/10);
k=sqrt(1/(2*j));
r1=x+k.*randi(1,N);
m_2=(r1>0);
no_of_error2 = sum(m~=m_2);
ber_2 = no_of_error2/N;
ber_theoritica2= [ber_theoritica2 ber_2];
ber_calculation_q2= qfunc(sqrt(j));
ber_practical2 = [ber_practical2 ber_calculation_q2];
end

semilogy(ber_practical2);
hold on;
xlabel('Time');
ylabel('BER');
grid on;

for i = 1:N
    if m(i) ==0
        x3(i) = -1;
    else
         x3(i) = 1;
    end
end    

ber_theoritical3 = [];
ber_practical3 = [];
for i = 0:1:16
j = 10^(i/10);
k = sqrt(1/(2*j)); 
r3 = x3+k.*randn(1,N); 
m_3 = (r3>0);
no_of_error3 = sum(m~=m_3);
ber_3 = no_of_error3/N;
ber_theoritical3= [ber_theoritical3 ber_3];
ber_calculation_q3 = qfunc(sqrt(2*j));
ber_practical3 = [ber_practical3 ber_calculation_q3];
end  

semilogy(ber_practical3);
hold on;
xlabel('Time');
ylabel('Amplitude');
grid on;
