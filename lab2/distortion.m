function d = distortion(threshold)
% Measure distortion due to compression

% First generate the test signal
N = 1024-1;			% Number of samples
t = (0:N)/(N+1);	% Time scale
s = testsig(t);	% Signal

% Compress the signal
s_compressed = compress(s,threshold);

% Recover the signal
s_restored = uncompress(s_compressed);

% Calculate the distortion, i.e.
% Norm of distance between output and input signal
d = norm(s_restored-s);

% Done