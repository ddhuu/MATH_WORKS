%phuong phap chia doi
function [x] = chiadoi(f, a, b, Df)
    k=1;
    while true
        c=(a+b)/2;
        fc=f(c);
        rEc=abs((a - c)/a);
        disp([k c fc]);
        plot(k,fc,'ro')
	hold on;
        if abs(fc) < Df
            break
        end
        
        if f(a)*f(c)>0
            a=c;
        else 
            b=c;
        end
        k=k+1;
    end
    x = c;
    hold off;
end