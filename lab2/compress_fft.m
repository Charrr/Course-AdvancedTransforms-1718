function y = compress_fft( x, threshold )

fx = fft(x);
y = fx .* (abs(fx)>=threshold);

end

