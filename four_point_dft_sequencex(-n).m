clc;
clear all;
close all;
x=[1 3 5 4];     % USING GIVEN SEQUENCE           
N=4;             % CONSIDER THE TIME SAMPLE STARTS FROM 0
n =0:N-1;
x=(mod(-n,N)+1);
disp('RESULT FOR  X(-n):'); 
disp(x);