I = rgb2gray(imread('bald_reggie.bmp'))
BW = imbinarize(I,level);
imshowpair(I,BW,'montage')
level = graythresh(bald_reggie)