
function Bnu = BnuT(nu, T)
    h = 6.62606957e-34;
    kB = 1.3806488e-23;
    c = 2.9979e8;
    Bnu = 2*h*nu.^3/c^2 * 1./(exp(h*nu /(kB*T))-1);
end