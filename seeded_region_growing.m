function selected_pixels = seeded_region_growing(tolerance,img,x,y)

% If there's no point, select one from image

if(x == 0 || y == 0)
    imshow(img,[0 255]);
    [x,y] = ginput(1);
end

%Create seed with by adding point in black image

selected_pixels = false(size(img,1),size(img,2));
old_selected_pixels = selected_pixels;
selected_pixels(uint8(x),uint8(y)) = 1;
while(sum(selected_pixels(:)) ~= sum(old_selected_pixels(:)))
    old_selected_pixels = selected_pixels;
% Evaluate image intensity at seed/line points
    intensity_value = img(selected_pixels);
% Calculate mean intensity at seed/line points
    mean_intensity = mean(intensity_value);
% Grow seed 1 pixel, and remove previous seed (so you'll get only new pixel perimeter)
    neighbour = imdilate(selected_pixels,strel('disk',1,0)) - selected_pixels;
% Evaluate image intensity over the new perimeter
    neighbours = find(neighbour);
    neighbour_values = img(neighbours);
% If image intensity over new perimeter is greater than the mean intensity of previous perimeter (minus tolerance), than this perimeter is part of the segmented object
    selected_pixels(neighbours(neighbour_values > mean_intensity - tolerance & neighbour_values < mean_intensity + tolerance)) = 1;
% Repeat while there's new pixel in seed, stop if no new pixel were added
end