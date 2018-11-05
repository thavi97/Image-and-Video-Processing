function cn_hist = cn_imhist( image_matrix )
%CN_IMHIST Summary of this function goes here
%   Detailed explanation goes here
    h = imhist(image_matrix);
    c_hist = h/sum(h);
    cn_hist = cumsum(c_hist);
end

