function [xt, yt] = projectile(v, theta, t)
    a = -9.8;
    vx = cosd(theta)*v;
    vy = sind(theta)*v;
    xt = vx*t;
    yt = vy*t + 0.5*a*t^2;
end