function uv = fillUVplane(x, y)
% Takes a list of receiver coordinates and fills a u,v-plane of appropriate
% dimensions (size of the 'moon.tif' image).

    Lx = 358; Ly = 537;
    Fx = int32(-Lx/2 : Lx/2-1);
    Fy = int32(-(Ly-1)/2 : (Ly-1)/2);
    [MFx, MFy] = meshgrid(Fx, Fy);

    n = length(x);       % number of receivers
    N = n*(n-1)/2;       % number of baseline vectors
    bx = zeros(N,1);     % x-component of baseline vector
    by = zeros(N,1);     % y-component of baseline vector

    % Loop over every pair of points
    k = 0;
    for i = 1:n
        for j = i+1:n
            k = k + 1;
            bx(k) = x(j) - x(i);
            by(k) = y(j) - y(i);
        end
    end

    % Concatenate the negation
    bx = [bx; -bx];
    by = [by; -by];

    uv = zeros(Ly,Lx);
    for i = 1:length(bx)
        uv(MFx == bx(i) & MFy == by(i)) = 1;
    end

end