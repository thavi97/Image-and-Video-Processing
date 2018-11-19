noisy_image = imread('noisy_image.bmp');
gaussian_mask = fspecial('gaussian',3,0.84932);
gaussian_img = filter2(gaussian_mask, noisy_image);
edge_detected = detect_horizontal_edge(gaussian_img);
imwrite(edge_detected,'image_edges.png');