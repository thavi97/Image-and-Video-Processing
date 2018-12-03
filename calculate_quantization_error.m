function [ final_answer ] = calculate_quantization_error( dct_coefficients, quantization_matrix )
%CALCULATE_QUANTIZATION_ERROR Summary of this function goes here
%   Detailed explanation goes here
    quantize = dct_coefficients./quantization_matrix;
    inverse_quantize = quantize.*quantization_matrix;
    new_quantize = quantization_matrix-inverse_quantize;
    final_answer = sum(new_quantize(:));
end

