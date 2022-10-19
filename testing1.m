
%%
%Generating message signal of 10 Hz frequency 
%sampling frequency=1000 Hz , modulation index=0.5
%carrier frequency=100Hz
Ts=1/1000;%Sampling Time
t=0:1/1000:3;%Time sample range of input signal
m=sin(2*pi*10*t);%Input Signal
plot(t,m);%plot the signal
%%
%Single sided spectrum
N=length(t);
y=fft(m,N);
z=y(1:(floor(N/2)+1));
k=0:(floor(N/2));
stem(k,abs(z));
%%
%Verifying the message signal frequency from the figure window
digital_frequency_in_rad=(2*pi/N)*30;
analog_frequency_in_rad=digital_frequency_in_rad/Ts;
analog_frequency_in_Hertz=analog_frequency_in_rad/(2*pi);
%%
%Modulation
s=10*(1+0.5*m).*sin(2*pi*100*t);%AM= Ac[1+ma*m(t)]sin2πfct 
plot(t,s);
%%
%Spectrum of modulated signal
N=length(t);
y=fft(s,N);
z=y(1:(floor(N/2)+1));
k=0:(floor(N/2));
stem(k,abs(z));
%%
%Verifying the frequency components present in the modulated wave
k=[270 300 330];
digital_frequency_in_rad=(2*pi/N)*k;
analog_frequency_in_rad=digital_frequency_in_rad/Ts;
analog_frequency_in_Hertz=analog_frequency_in_rad/(2*pi);