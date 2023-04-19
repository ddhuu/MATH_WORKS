function result = check_p_star_r(p_t, r_Ep, p_star)
    aEp = p_t*r_Ep;
    p_L = p_t - aEp;
    p_R = p_t + aEp;
    result = (p_L <= p_star) && (p_star <= p_R);
end