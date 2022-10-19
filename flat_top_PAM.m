clc;
clear all;
close all;
t =0:0.001:1;
fm = 10;
fc = 50;
m = 5*sin(2*pi*fm*t) ; 
subplot( 3,1,1 );
plot(t,m ) ;
xlabel ('t' );
ylabel ( 'magnitude ' ) ;
title ( ' sinusoidal signal ' ) ;
grid on;
c = square(2*pi*fc*t) ;
subplot ( 3,1,2 ) ;
plot ( t , c ) ;
xlabel ( ' t ' ) ;
ylabel ( ' magnitude ' ) ;
title ( ' pulse train ' ) ;
grid on;
n = length(c) ;
for i=1:n
if (c(i)<=0)
c(i)=0;
else 
c(i)=1;
end
end 
y=c.*m ; 
for i=2:length(t) 
if c(i)==1 && c(i-1)==0 % if the rising edge is detected 
y(i)=c(i)*m(i); % sampling occurs
else if c(i)==1 && c ( i - 1 ) == 1 %  while the carrier signal is 1
 y ( i ) = y ( i - 1 ) ; % the value of yn remains constant
else 
 y ( i ) = 0 ; % otherwise , y is zero
 end 
 end
end 
subplot(3,1,3)
plot (t,y) ; % flat - top PAM plot
xlabel (' t ') ;
ylabel ('magnitude');
title (' flat - top PAM signal ') ;
grid on;