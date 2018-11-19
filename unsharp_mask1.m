matrix = load('unsharp_mask.mat');
minValue = min(matrix(:));
newMatrix = matrix - minValue;
maxValue = max(newMatrix(:));
productMatrix = newMatrix.*(255/maxValue);
figure,image(productMatrix),axis off,colormap gray(256);
clear;