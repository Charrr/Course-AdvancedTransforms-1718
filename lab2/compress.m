function y = compress(x, threshold)
% Compress signal using some function
% transformed signal values below threshold will be removed
%
% Use dwt_haar to separate out the DC and AC components. 
fx = dwt_haar(x, 10);

% Keep only sufficiently large values of fx
y = fx .* (abs(fx)>=threshold);

% Til here, some trivial values on the AC side have been thrown away, thus
% achieving certain extent of compression.


% %%%% Trial for FFT
% fx = fft(x);
% y = fx .* (abs(fx)>=threshold);