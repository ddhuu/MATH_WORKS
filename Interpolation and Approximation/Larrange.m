function  p =  Larrange(a,b)

syms x;
p= 0;
n = length(a);
m = length(b);

syms x;
if n ~= m
    disp('Input is invalid !!!!')
else
   for i = 1 : n
       L =1;
       for j= 1: n
           if  i~= j
               L =  L *(x- a(j)) / ( a(i) - a(j)); 
           end 
       end
       p = p + b(i)*L;
   end
p = expand(p);
end



