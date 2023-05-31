function [yy] = euler(f,a,b,y0)
    xx = a:0.1:b;
    yy = 0*xx;
    yy(1) = y0;
    for i = 1:length(yy)-1
        yy(i+1) = yy(i) + (xx(i+1)-xx(i))*f(xx(i),yy(i));
        yy(i+1) = yy(i) + (xx(i+1)-xx(i))*(f(xx(i),yy(i)) + f(xx(i+1),yy(i+1)))/2;
    end
end

