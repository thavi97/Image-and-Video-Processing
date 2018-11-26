bald_reggie = imread('bald_reggie.bmp');
ycbcr_bald_reggie = rgb2ycbcr(bald_reggie);
display_image_channels(ycbcr_bald_reggie);