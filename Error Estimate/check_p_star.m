function is_valid = check_p_star(p_t,a_Ep,p_star)
    p_L = p_t - a_Ep;
    p_R = p_t + a_Ep;
    is_valid = (p_L <= p_star)&&( p_star <= p_R);
end


