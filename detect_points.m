function [ absolute_value ] = detect_points( img )
%DETECT_POINTS Summary of this function goes here
%   Detailed explanation goes here
    point_mask = [-1 -1 -1;-1 8 -1;-1 -1 -1];
    point_filter = filter2(point_mask, img);
    absolute_value = abs(point_filter);
    threshold_point = prctile(absolute_value,95);
    absolute_value(absolute_value>=threshold_point) = 255;
    absolute_value(absolute_value<threshold_point) = 0;
end

