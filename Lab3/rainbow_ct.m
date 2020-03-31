function colour_vector = rainbow_ct(wavelength)
    %
    %  Computes an RGB colour vector corresponding to a 
    %  particular wavelength of light given in nanometres.
    %
    %  Input must he a scalar in the range 390nm-700nm
    %
    %  In total there are 256 distinct colours.
    %
    %  AUTHOR: Stuart Gilchrist 
    %  CREATED: 22 Jan 2014
    %

    % Red wavelength limit (nm)
    wr = 700;

    % Blue wavelength limit (nm)
    wb = 390;

    % Compute colour map index, i.e. map wavelength to the interval [1,256]
    cmap_index = round(256*(wavelength-wb)/(wr-wb));

    % Prevent index from being less than one
    if(cmap_index < 1) 
        cmap_index = 1;
    end

    % Generate 256 colour "jet" colour map 
    cmap = colormap(jet(256));

    % Sample colour map and return RGB vector
    colour_vector = cmap(cmap_index,:);

return