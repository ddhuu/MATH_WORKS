clc
close all
clear all
format long
m = 7


%Bai 2

A = [ 6,1,1,1,1; 2,9,3,1,2;2,1,10,m,2;1,2,1,8,3;2,1,2,3,9];
C = [9;1;-12;12;6];
dF = 10^(-3);

X= lap(A,C,dF);
fprintf("Nghiem xap xi cua he phuong trinh la")
disp(X)

syms  x1 x2 x3 x4 x5;
X= [x1;x2;x3;x4;x5];
[x1,x2, x3, x4 ,x5 ] = solve(A*X==C);
disp("Nghiem chinh xac")
fprintf("%f\n",x1);
fprintf("%f\n",x2);
fprintf("%f\n",x3);
fprintf("%f\n",x4);
fprintf("%f\n",x5);







