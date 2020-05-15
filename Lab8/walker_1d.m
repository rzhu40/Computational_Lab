function end_pos = walker_1d(nsteps)
    y = zeros(1,nsteps);
    for i = 2:1:nsteps
        temp = randi([0,1]);
        if temp
            y(i) = y(i-1)+1;
        else
            y(i) = y(i-1)-1;
        end
    end
    end_pos = y(end);
end