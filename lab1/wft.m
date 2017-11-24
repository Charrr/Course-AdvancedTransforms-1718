function [ s_windowed ] = wft( s, t, n )
%WFT selects a section from a file and window it.
%   s is the signal in frequency domain, 
%   t is the middle position of the window, 
%   n is a window length.
han = hanning(n);
len = length(s);
if t-n/2 < 0    % In case the window reaches out the leftmost of the signal.
    s_windowed = s(1:floor(n/2+t)) .* han(floor(n/2-t+1):n);
    s_windowed = [s_windowed', zeros(1,floor(len-(t+n/2)))]';
elseif t+n/2 > len  % In case the window reaches out the rightmost of the signal.
    s_windowed = zeros(1,floor(t-n/2));
    s_windowed = [s_windowed, (s(floor(t-n/2):len) .* han(1:floor(len-t+n/2+1)))']';
else            % Normal case.
    s_windowed = zeros(1,floor(t-n/2));
    s_windowed = [s_windowed, (s(floor(t-n/2)+(1:n)) .* han(n))'];
    s_windowed = [s_windowed, zeros(1,floor(length(s)-t-n/2))]'; 
end

figure('name','Windowing an audio file'),
subplot(2,2,1), semilogy(abs(s));	% plot the fft of the original audio signal.
title('Original signal - Frequency domain');
subplot(2,2,2), plot(real(ifft(s)));	% plot the the original signal.
title('Original signal - Time domain');
subplot(2,2,3), semilogy(abs(s_windowed));  % plot the windowed result.
title('Windowed signal - Frequency domain');
subplot(2,2,4), plot(real(ifft(s_windowed))); % convert the windowed signal to time domain.
title('Windowed signal - Time domain');

end