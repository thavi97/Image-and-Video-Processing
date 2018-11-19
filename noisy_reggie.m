bald_reggie = imread('bald_reggie.bmp');
gray_reggie = rgb2gray(bald_reggie);
gaussian_reggie2 = imnoise(gray_reggie, 'gaussian', 0.5);
salty_reggie2 = imnoise(gray_reggie, 'salt & pepper', 0.7);

%figure,image(gaussian_reggie2),axis off,colormap gray(256)
%figure,image(salty_reggie2),axis off,colormap gray(256)