function psnr = calculatePSNR(img1,img2)
%CALCULATEPSNR Summary of this function goes here
%   Detailed explanation goes here
    mse = sum(sum((double(img1)-double(img2)).^2))/(size(img1,1)*size(img2,2));
    psnr = 10*log10(255^2/mse);

end

