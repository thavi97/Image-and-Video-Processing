function img = display_grayscale_image( grayscale_image )
%DISPLAY_GRAYSCALE_IMAGE Summary of this function goes here
%   Detailed explanation goes here
    figure;
    img = image(rgb2gray(imread(grayscale_image)));
    axis off;
    colormap gray(256);
end