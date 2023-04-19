% Tuan 05 : NOI SUY XAP XI LARRANGE & NEWTON
clc
close all
clear all
%  Bai 14
a  = [-3.2,-2.5,-1.7,-0.8,0.3,1.5];
b  =  [-8.982,-5.831,-4.261,-1.837,-3.298,-0.249];
L = Larrange(a,b);
fprintf('Using Larrange:\n')
fprintf('f(2) = %d \n',subs(L,2));
fprintf('f(0) = %d\n',subs(L,2));

% Bai 15
c  = [-3.2,-2.5,-1.7,-0.8,0.3,1.5];
d= [-8.982,-5.831,-4.261,-1.837,-3.298,-0.249];
N = Newton(c,d);
fprintf('Using NewTon Method:\n')
fprintf('f(2) = %d\n',subs(N,2));
fprintf('f(0) = %d\n',subs(N,2));

% Ki?m tra 
fplot(L,[a(1),a(end)]);
plot(a,b);


