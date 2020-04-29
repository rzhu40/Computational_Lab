function [freqs, sqmod] = fourier_trans(x, y, dx_samp)
    idx = mod(x, dx_samp) == 0;
    Y = fft(y(idx));
    f_samp = 1/dx_samp;
    F = fftshift(Y);
    Nq = 1/(2*dx_samp);
    L = x(end);
    freqs = -Nq:1/L:Nq-(1/L);
    sqmod = abs(F).^2;
end