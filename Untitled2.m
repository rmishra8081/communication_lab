% saswat mund
%19010210
clear;
N = 100;
m = randi([0 1],1,N);

% FOR  MODULATION
xA = zeros(length(N));
xF = zeros(length(N));
xP =  zeros(length(N));
% for mapping the values
for i = 1:N
    if m(i) ==0
        xA(i)=0;
        xF(i) = -1;
        xP(i) = -1;
    else
        xA(i) =1;
         xF(i) = 1;
         xP(i) = 1;
    end
end    

%For AWGN CHANNEL
AberPr = [];
AberTh = [];
EbnDb = (0:1:10)'; %Eb/No
% for ask
for i = 0:1:10
EbN0 = 10^(i/10);
sigma = sqrt(1/(2*EbN0)); % Noise standard deviation
rOut = xA+sigma.*randn(1,N); % AWGN CHANNEL ouput
m_cap = (rOut>0.5); % for decision
% BER OF ASK
noe = sum(m~=m_cap); % to check not equal to in each index and sum all cases
berPr1 = noe/N;
AberPr= [AberPr berPr1];
AberTh1 = qfunc(sqrt(EbN0/2));
AberTh = [AberTh AberTh1];
end    


% for fsk
FberPr = [];
FberTh = [];
for i = 0:1:10
EbN0 = 10^(i/10);
n = randn(1,N); %  guassian variable
sigma = sqrt(1/(EbN0)); 
rOut = xF+sigma.*n; % AWGN CHANNEL ouput
m_cap = (rOut>0);
% BER OF FSK
noe = sum(m~=m_cap);
berPr1 = noe/N;
FberPr= [FberPr berPr1];
FberTh1 = qfunc(sqrt(EbN0));
FberTh = [FberTh FberTh1];
end


%for Bpsk
BberPr = [];
BberTh = [];
EbnDb = (0:1:10)'; %Eb/No
% for bpsk
for i = 0:1:10
EbN0 = 10^(i/10);
sigma = sqrt(1/(2*EbN0)); % Noise standard deviation
rOut = xP+sigma.*randn(1,N); % AWGN CHANNEL ouput
m_cap = (rOut>0); % for decision
% BER OF bpSK
noe = sum(m~=m_cap); % to check not equal to in each index and sum all cases
berPr1 = noe/N;
BberPr= [BberPr berPr1];
BberTh1 = qfunc(sqrt(2*EbN0));
BberTh = [BberTh BberTh1];
end    


% for plotting signal
nexttile
semilogy(EbnDb,AberPr,'red');
hold on
semilogy(EbnDb,FberPr,'blue');
hold on
semilogy(EbnDb,BberPr,'green');
hold off
legend('ASK','FSK','BPSK');
xlabel('SNR (db) --->');
ylabel('BER');
title(' BER performance Practical');

figure
semilogy(EbnDb,AberTh,'red');
hold on
semilogy(EbnDb,FberTh,'blue');
hold on
semilogy(EbnDb,BberTh,'green');
hold off
legend('ASK','FSK','BPSK');
xlabel('SNR (db) --->');
ylabel('BER');
title(' BER performance Theoratical');

