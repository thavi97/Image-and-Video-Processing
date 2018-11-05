function [ output_args ] = auto_threshold(img)
%AUTO_THRESHOLD Summary of this function goes here
%   Detailed explanation goes here
    image_matrix = imread(img)
    mean_value = mean(image_matrix(:))
    threshold(image_matrix, mean_value);

end

