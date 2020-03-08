function type = triangle(side1, side2, side3) 
    v=unique([side1, side2, side3]); 
    if(length(v) == 3)
        type = 'scalene'; 
    elseif(length(v)==2)
        type = 'isosceles'; 
    else
        type = 'equilateral'; 
    end
end