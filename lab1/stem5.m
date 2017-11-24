function stem5( s )
% STEM5 - View complex signal as real, imag, abs and angle
% The first one is the original signal in time domain.

subplot(5,1,1); stem(s); title('The orinigal signal');
subplot(5,1,2); stem(real(fftshift(dft(s)))); title('Real');
subplot(5,1,3); stem(imag(fftshift(dft(s)))); title('Imag');
subplot(5,1,4); stem(abs(fftshift(dft(s)))); title('Abs');
subplot(5,1,5); stem(angle(fftshift(dft(s)))); title('Angle');

end

