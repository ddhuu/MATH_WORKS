function  p  =  Newton(a,b)

syms x;
p = 0;
n = length(a);
m = length(b);

if ( n ~=  m)
    disp('Input is invalid !!!! ')
else
  f= zeros(n,n);
  f(:,1) = b;
  k =1;
  for i = 2 : n
      for j = 2: n
           if  j <= i
               f(i,j) = ( f(i,j-1) - f(i-1,j-1 )) / (a(i) - a(i-j+1));
           end
      end 
  end
      for i= 1:n
      p = p + f(i,i) * k;
      k = (x - a(i))* k;
      end
    
    
 p = expand(p);    
end
