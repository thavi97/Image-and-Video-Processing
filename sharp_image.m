function sharpened_image = sharp_image( img, laplacian_img )
%SHARP_IMAGE Summary of this function goes here
%   Detailed explanation goes here
    sharpened_image = double(img) - double(laplacian_img);
    figure,image(sharpened_image);
    colormap gray(255);

end

