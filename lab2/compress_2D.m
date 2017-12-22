function y = compress_2D( x, threshold )

fx = dwt2_haar(x, 6);
y = fx .* (abs(fx)>=threshold);

end
