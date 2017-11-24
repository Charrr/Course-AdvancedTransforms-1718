function stem4( s )
% STEM4 - View complex signal as real, imag, abs and angle

subplot(4,1,1); stem(real(s)); title('Real');
subplot(4,1,2); stem(imag(s)); title('Imag');
subplot(4,1,3); stem(abs(s)); title('Abs');
subplot(4,1,4); stem(angle(s)); title('Angle');

end

