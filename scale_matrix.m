function productMatrix = scale_matrix( matrix )
%SCALE_MATRIX Summary of this function goes here
%   Detailed explanation goes here
    minValue = min(matrix(:));
    newMatrix = matrix - minValue;
    maxValue = max(newMatrix(:));
    productMatrix = newMatrix.*(255/maxValue);
end

