function normalizedVector = normalize_vector( vector )
%NORMALIZE_VECTOR Summary of this function goes here
%   Detailed explanation goes here
    currentNorm = sqrt(sum(vector.^2));
    normalizedVector = vector./currentNorm;

end

