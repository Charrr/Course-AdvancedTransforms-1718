function [  ] = comp_fft( s )
%COMP_FFT Summary of this function goes here
%   Detailed explanation goes here

figure('NumberTitle', 'off', 'Name', 'DFT vs FFT')
subplot(4,1,1); stem(fftshift(real(dft(s)))); title('Real');
hold on, stem(fftshift(real(fft(s)))); title('Real');
hold off
subplot(4,1,2); stem(fftshift(imag(dft(s)))); title('Imag');
hold on, stem(fftshift(imag(fft(s)))); title('Imag');
hold off
subplot(4,1,3); stem(fftshift(abs(dft(s)))); title('Abs');
hold on, stem(fftshift(abs(fft(s)))); title('Abs');
hold off
subplot(4,1,4); stem(fftshift(angle(dft(s)))); title('Angle');
hold on, stem(fftshift(angle(fft(s)))); title('Angle');
hold off

legend('DFT','FFT');

end

