clc
clear all
format long

m = 7;
%a
T =  @(t)  10* exp(-m*t) + 6*cos (pi*t/18);
xx =  0 : 0.5 : 12 ;
yy =  T(xx);
F =  simpson_13(xx,yy);
fprintf("T_tb =%f",F/12);

%b
T1 =  @(t)  10* exp(-m*t) + 6*cos (pi*t/18) - F/12;
[t] = chiadoi(T1,0,12,0.001);
fprintf("t=%f\n",t);


%c
syms t
T =   10* exp(-m*t) + 6*cos (pi*t/18);
t_a =  double (int(T,0,12)/12);
fprintf("Nghiem chinh xac t_a= %f\n",t_a);



[t_b] = vpasolve(T - t_a== 0);
fprintf("Nghiem chinh xac t_b= %f",t_b);




