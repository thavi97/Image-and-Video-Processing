function [ threshold_edge ] = detect_horizontal_edge( grayscale_image )
    sobel_mask = [-1 0 1;-2 0 2;-1 0 1];
    sobel_filter = filter2(sobel_mask, grayscale_image);
    absolute_value = abs(sobel_filter);
    threshold_edge = prctile(absolute_value,90);
end

