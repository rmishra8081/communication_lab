clc;
clear all;
close all;
x=[1 3 5 4];     % USING GIVEN SEQUENCE 
n=0:3;           % CONSIDER THE TIME SAMPLE STARTS FROM 0
N=4;            
n =0:N-1;
a=mod(n-1,4);
x=(a+1);
disp('RESULT FOR  X(n-1)n:'); 
disp(x);