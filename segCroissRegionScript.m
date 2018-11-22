I = im2double(imread('HW1.png'));
J = segCroissRegion(0.5,I,0,0);
figure, imshow(I+J);
colormap gray(255);