function y = compress(x, threshold)
% Compress signal using some function
% transformed signal values below threshold will be removed
%
% DO SOMETHING TO THE SIGNAL HERE
fx = SOME_FUNCTION(x, PARAMETERS);
% DONE

% Keep only sufficiently large values of fx
y = fx .* (abs(fx)>=threshold);

% Done