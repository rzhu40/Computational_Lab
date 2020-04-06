function n = air_glass_interface(r)
    if r(2) <= 0.5
        n = 1.5;
    else
        n = 1.0;
    end
end