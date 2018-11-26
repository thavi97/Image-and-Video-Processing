function [ output_args ] = display_image_channels( img )
%DISPLAY_IMAGE_CHANNELS Summary of this function goes here
%   Detailed explanation goes here
    red_channel = img(:,:,1).*0.299;
    green_channel = img(:,:,1).*0.587;
    blue_channel = img(:,:,1).*0.114;
    
    figure,image(red_channel);
    colormap gray(255);
    figure,image(green_channel);
    colormap gray(255);
    figure,image(blue_channel);   
    colormap gray(255);

end

