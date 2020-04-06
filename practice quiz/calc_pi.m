function pin = calc_pi(n)
    n_list = 1:n;
    sum_list = 4*(-1).^(n_list+1)./(2.*n_list-1);
    pin = sum(sum_list);
end