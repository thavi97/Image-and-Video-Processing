function z = threshold( img_matrix, threshold )
%THRESHOLD Summary of this function goes here
%   Detailed explanation goes here
    img_matrix(img_matrix<threshold) = 0;
    img_matrix(img_matrix >= threshold) = 255;
    figure,image(img_matrix);
    colormap(gray);
    axis off;
end

