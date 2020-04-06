function s2 = refract_ray(n1, n2, s1)
    theta1 = asind(abs(s1(1)));
    theta2 = asind(n1*sind(theta1)/n2);
    if sind(theta1) <= n2/n1
        s2 = [sind(theta2), sign(s1(2))*cosd(theta2)];
    else
        s2 = [s1(1), -s1(2)];
    end
end