function [yc] = DaThucTongQuat(xx,yy)
    n = length(xx);
    for i = 0:(n-1)
        X(:,i+1) = (xx').^i;
    end
    Y = yy';
    A=inv(X)*Y;
    syms x;
    P=0;
    for i =1:n
        P= P+A(i)*x^(i-1);
    end
    ezplot(P,[xx(1) xx(end)]);
    hold on;
    plot(xx,yy,'bo');
    hold off;
    yc = P ;
end

----ĐA THỨC TỔNG QUÁT----

function [yc] = DaThucTongQuat(xx,yy)
    n = length(xx);
    for i = 0:(n-1)
        X(:,i+1) = (xx').^i;
    end
    Y = yy';
    A=inv(X)*Y;
    syms x;
    P=0;
    for i =1:n
        P= P+A(i)*x^(i-1);
    end
    ezplot(P,[xx(1) xx(end)]);
    hold on;
    plot(xx,yy,'bo');
    hold off;
    yc = P ;
end

--

