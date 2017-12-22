function y = compress_2Dfft( x, threshold )

fx = fft2(x);
y = fx .* (abs(fx)>=threshold);

end

