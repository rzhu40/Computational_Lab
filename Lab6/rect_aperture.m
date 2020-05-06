function rect = rect_aperture(r1, c1, r2, c2)
    rect = zeros(512, 1024);
    rect(r1:r2, c1:c2) = 1;
end