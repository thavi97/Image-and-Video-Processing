function [ quantize ] = quantize_block( dct_coefficients, quantization_matrix )
%QUANTIZE_BLOCK Summary of this function goes here
%   Detailed explanation goes here
    quantize = dct_coefficients./quantization_matrix;
end

