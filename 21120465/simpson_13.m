function [I] = simpson_13(xx, yy)
    n = length(xx);
    I = 0;
    for i = 1:2:n-2
        I = I + (xx(i+2) - xx(i))*(yy(i+2) + 4*yy(i+1) + yy(i))/6;
    end
    I = double(I);
end