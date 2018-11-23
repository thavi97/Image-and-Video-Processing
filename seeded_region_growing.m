function Phi = seeded_region_growing(tolerance,img,x,y)

% If there's no point, select one from image

if(x == 0 || y == 0)
    imshow(img,[0 255]);
    [x,y] = ginput(1);
end

%Create seed with by adding point in black image

Phi = false(size(img,1),size(img,2));
ref = true(size(img,1),size(img,2));
PhiOld = Phi;
Phi(uint8(x),uint8(y)) = 1;
while(sum(Phi(:)) ~= sum(PhiOld(:)))
    PhiOld = Phi;
% Evaluate image intensity at seed/line points
    segm_val = img(Phi);
% Calculate mean intensity at seed/line points
    meanSeg = mean(segm_val);
% Grow seed 1 pixel, and remove previous seed (so you'll get only new pixel perimeter)
    posVoisinsPhi = imdilate(Phi,strel('disk',1,0)) - Phi;
% Evaluate image intensity over the new perimeter
    voisins = find(posVoisinsPhi);
    valeursVoisins = img(voisins);
% If image intensity over new perimeter is greater than the mean intensity of previous perimeter (minus tolerance), than this perimeter is part of the segmented object
    Phi(voisins(valeursVoisins > meanSeg - tolerance & valeursVoisins < meanSeg + tolerance)) = 1;
% Repeat while there's new pixel in seed, stop if no new pixel were added
end