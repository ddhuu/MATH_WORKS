clc
clear all
format long

xx = [4,5,8,9,10,12,15];
yy = [1040.61,1040.31,1053.44,1055.03,1057.26,1064.64,1067.78];
P = ((DaThucTongQuat(xx,yy)));
disp(P)


syms x

double(subs(P,x,6))
double(subs(P,x,7))
double(subs(P,x,11))
double(subs(P,x,14))
