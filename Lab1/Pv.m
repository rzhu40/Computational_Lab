
function P = Pv(v, T)
    R = 8.31;
    M = 28e-3;
    P = 4*pi*(M/(2*pi*R*T))^1.5 * v.^2 .* exp(-M*v.^2/(2*R*T));
end