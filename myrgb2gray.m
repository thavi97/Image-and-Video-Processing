function gray_image = myrgb2gray( rgb_image )
%MYRGB2GRAY Summary of this function goes here
%   Detailed explanation goes here
    red_channel = rgb_image(:,:,1).*0.299;
    green_channel = rgb_image(:,:,2).*0.587;
    blue_channel = rgb_image(:,:,3).*0.114;
    gray_image = red_channel + blue_channel + green_channel;
    figure,image(gray_image);
    colormap gray(255);
end

