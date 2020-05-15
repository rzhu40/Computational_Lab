function pi_est = estimate_pi(ns)
    ns = round(ns);
    x = 2*rand(ns,1) - 1;
    y = 2*rand(ns,1) - 1;
    nc = sum(x.^2+y.^2<1);
    pi_est = 4*nc/ns;
end