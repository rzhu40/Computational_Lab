function v2 = MH(v1)
    Mh = 6.64648e-27;
    T = 294.15;
    k = 1.3806488e-23;
    
    v2 = 100*randn(1) + v1;
    P1 = (Mh / (2*pi*k*T))^(3/2)*4*pi*v1^2*exp(-(Mh*v1^2)/(2*k*T));
    P2 = (Mh / (2*pi*k*T))^(3/2)*4*pi*v2^2*exp(-(Mh*v2^2)/(2*k*T));
    alpha = P2/P1;
    if (rand() > alpha) | (v2 < 0)
        v2 = v1;
    end
end