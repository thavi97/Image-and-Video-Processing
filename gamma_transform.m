function z = gamma_transform(img, curve)
%GAMMA_TRANSFORM Summary of this function goes here
%   Detailed explanation goes h
    img = double(img);
    c_max = max(img);
    y = c_max.*(img./c_max).^curve;
    result = uint8(y);
    z = result;
end

