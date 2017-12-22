function x = uncompress(y)
% Compress signal using some function
% transformed signal values below threshold will be removed
%
% Use idwt_haar to re-synthesise the DC and AC components. 
x = idwt_haar(y, 10);


% %%%% Trial for FFT
% x = ifft(y);