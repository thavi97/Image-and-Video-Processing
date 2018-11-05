reggie = imread('reggie2.bmp');
gray_reggie = rgb2gray(reggie);
gaussian_reggie2 = imnoise(gray_reggie, 'gaussian', 0.5);
salty_reggie2 = imnoise(gray_reggie, 'salt & pepper', 0.5);
salty_reggie3 = imnoise(gray_bald_reggie, 'salt & pepper', 0.4);

%figure,image(gaussian_reggie2),axis off,colormap gray(256)
%figure,image(salty_reggie2),axis off,colormap gray(256)