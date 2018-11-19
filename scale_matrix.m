function productMatrix = scale_matrix( matrix )
    minValue = min(matrix(:));
    newMatrix = matrix - minValue;
    maxValue = max(newMatrix(:));
    productMatrix = newMatrix.*(255/maxValue);
end

