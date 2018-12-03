function [ inverse_quantize ] = inverse_quantize_block( quantized_dct_coefficients, quantization_matrix )
%INVERSE_QUANTIZE_BLOCK Summary of this function goes here
%   Detailed explanation goes here
    inverse_quantize = quantized_dct_coefficients.*quantization_matrix;

end

