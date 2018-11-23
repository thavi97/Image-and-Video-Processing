%Read in the image and convert to double values
I = im2double(imread('PR7.png'));

%If you want to select the seed manually on the image, then set the x and y coordinates to 0
J = seeded_region_growing(0.5,I,0,0);

%Show the original image compared with the binarised one
figure, imshow(I+J);

colormap gray(255);