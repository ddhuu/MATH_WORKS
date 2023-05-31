clc
close all
clear all
format long


m = 7 ;
%Bai 1

f = @(x)   m*x^2 - exp((m/10)*x) - x* sin((-m/10)*x);
c  = chiadoi(f,-1,0,10^(-3));
fprintf('Nghiem xap xi la %f\n',c);

%c
syms x
f =  m*x^2 - exp((m/10)*x) - x* sin((-m/10)*x);
[c1] =  solve (f==0);
fprintf("Nghiem chinh xã la%f\n",c1)

 aRP = abs ( c1 -c );
 eRP = abs  (aRP/c1) ; 


 fprintf("Sai so tuong doi %f\n",eRP);
 fprintf("Sai so tuyet doi %f\n",aRP);


