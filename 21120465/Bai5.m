clc
clear all
format long

f = @(x,y) x +y;
yy = euler(f,0,0.4,1);
disp(yy);


%%%  Using dsolve

syms y(x) ;
eqn = diff(y,x)== x+ y;
cond = y(0)==1;
P =  dsolve (eqn,cond);
disp(P)
xx= 0:0.1:0.4;
yy = subs(P,xx);
double(yy(1))
double(yy(2))
double(yy(3))