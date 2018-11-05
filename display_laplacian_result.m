function scaled_image = display_laplacian_result( gray_image )
%DISPLAY_LAPLACIAN_RESULT Summary of this function goes here
%   Detailed explanation goes here
    laplacian_mask = fspecial('laplacian');
    filtered_image = filter2(laplacian_mask, gray_image);
    scaled_image = scale_matrix(filtered_image);
    colormap gray(256);
end

