function [  ] = comp_fft( input )
%COMP_FFT Summary of this function goes here
%   Detailed explanation goes here

% figure('NumberTitle', 'off', 'Name', 'DFT'), 
% stem4(dft(input));
% figure('NumberTitle', 'off', 'Name', 'FFT'), 
% stem4(fft(input));
figure('NumberTitle', 'off', 'Name', 'DFT vs FFT')
stem4(dft(input));
hold on
stem4(fft(input));

end

