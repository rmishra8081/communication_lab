clc;
clear all;
close all;
N=1000;
m=randi([0 1],1,N);
for i=1:N
    if m(i)==0
        x(i)=-1;
    else
        x(i)=1;
    end
end
ber_sim=[];
ber_theory_erfc=[];
ber_theory_Q=[];
ber_app=[];
for EbN0dB=0:1:15
EbN0=10^(EbN0dB/10);
sigma=sqrt(1/(2*EbN0));
r=x+sigma.*randi(1,N);
m_cap=(r>0);
noe=sum(m~=m_cap);
ber_siml=noe/N;
ber_sim=[ber_sim ber_siml];
ber_th_er=0.5*erfc(sqrt (EbN0) ) ; 
ber_theory_erfc=[ber_theory_erfc ber_th_er];
ber_th_q=qfunc(sqrt (EbN0/2));
ber_theory_Q=[ber_theory_Q ber_th_q];
ber_a=0.5*exp(-EbN0); 
ber_app= [ber_app ber_a]; 
end
semilogy(ber_theory_Q);
hold on;
xlabel('Time');
ylabel('Amplitude');
title('INITIAL BITS STREAM');
grid on;

semilogy(ber_theory_erfc);
hold on;
xlabel('Time');
ylabel('Amplitude');
title('INITIAL BITS STREAM');
grid on;

