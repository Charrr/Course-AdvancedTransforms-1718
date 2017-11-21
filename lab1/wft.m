function [ s_windowed ] = wft( s, t, n )
% WFT selects a section from a file and window it.
%   s is the signal, 
%   t is the time in the middle of the window, 
%   n is a window length.
han = hanning(n);
len = length(s);
if t-n/2 < 0
    s_windowed = s(1:floor(n/2+t)) .* han(floor(n/2-t+1):n);
    s_windowed = [s_windowed', zeros(1,floor(len-(t+n/2)))]';
elseif t+n/2 > len
    s_windowed = zeros(1,floor(t-n/2));
    s_windowed = [s_windowed, (s(floor(t-n/2):len) .* han(1:floor(len-t+n/2+1)))']';
else
% s = [zeros(1, floor(0-(t-n/2))), s', zeros(1, floor(t+n/2-len))]';
    s_windowed = zeros(1,floor(t-n/2));
    s_windowed = [s_windowed, (s(floor(t-n/2)+(1:n)) .* han(n))'];
% windowed = s(floor(t-n/2)+(1:n)) .* hanning(n);
    s_windowed = [s_windowed, zeros(1,floor(length(s)-t-n/2))]'; 
end

figure('name','Windowing an audio file'),
subplot(2,2,1), plot(s);            % plot the original audio signal.
subplot(2,2,2), plot(abs(fft(s)));  % plot the dft of the original signal.
subplot(2,2,3), plot(s_windowed);   % plot the windowed signal.
subplot(2,2,4), plot(abs(fft(s_windowed))); % plot the dft of the windowed signal.

end

