function [rEq, aEq] = saiso(q_a, q_e)
    aEq = abs(q_a - q_e);
    rEq = abs((q_a - q_e)/q_a);
end