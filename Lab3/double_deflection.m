function gamma = double_deflection(y, lambda, Rdrop)
    n1 = 1;
    c0 = 1.3128;
    c1 = 15.7622;
    c2 = -4382;
    c3 = 1.1455e6;
    n2 = c0 + c1./lambda + c2./lambda.^2 + c3./lambda.^3;
    phi = asind(y/Rdrop);
    theta = asind(n1*sind(phi)./n2);
    gamma = 180 + 2*phi - 6*theta;
end