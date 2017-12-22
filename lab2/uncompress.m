function x = uncompress(y)
% Compress signal using some function
% transformed signal values below threshold will be removed
%
% x = idwt_haar(y, 10); % Use idwt_haar to re-synthesise the DC and AC components. 


% %%%% for IFFT
% x = ifft(y);


%%%% for 2D IDWT
x = idwt2_haar(y, 10);


% %%%% for 2D IFFT
% x = ifft2(y);
