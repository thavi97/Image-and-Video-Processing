load_img = imread('airplane.bmp')
grayscale_image = rgb2gray(load_img);
gamma_image = gamma_transform('airplane.bmp', 2.0);
written_image = imwrite(gamma_gray, gamma_image);
