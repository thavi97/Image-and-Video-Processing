box_mask = fspecial('average', 7);
gaussian_mask = fspecial('gaussian',3,0.84932);
box_img = filter2(box_mask, salty_reggie3);
med_img = medfilt2(salty_reggie3,[7,7]);
gaussian_img = filter2(gaussian_mask, salty_reggie3);

figure,image(salty_reggie3),axis off,colormap gray(256),title SaltyReggie
figure,image(box_img),axis off,colormap gray(256),title BoxReggie
figure,image(med_img),axis off,colormap gray(256),title MedianReggie
figure,image(gaussian_img),axis off,colormap gray(256),title GuassianReggie