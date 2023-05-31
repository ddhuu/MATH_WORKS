function [X] = lap(A, C, Df)
    n = length(C);
    for(i = 1:n)
        B(:,i) = -A(:,i)./diag(A);
    end
    B = B + eye(n);
    G = C./diag(A);
    k = 1;
    X0 = G;
    Xn = X0;
    while true
        Xn = B* X0 + G;
        fX = norm(A*Xn - C);
        rEx = norm((Xn - X0)./X0);
        if abs(fX) <= Df
            break 
        end
        X0 = Xn;
        k = k+1;
    end
    X = Xn;
end
