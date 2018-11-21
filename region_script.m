I = im2double(imread('HW4.png'));
J = regiongrowing(I);
figure, imshow(I+J);
colormap gray(255);