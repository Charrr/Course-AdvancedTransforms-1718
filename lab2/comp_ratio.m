function r = comp_ratio(threshold)
% Measure compression ratio

% First generate the test signal
N = 1024-1;			% Number of samples
t = (0:N)/(N+1);	% Time scale
s = testsig(t);	% Signal

% Now compress the signal
s_out = compress(s,threshold);

% Calculate "compression ration", i.e.
% (number of non-zeros out) / (number of non-zeros in)
% For this measure, smaller is better compression
r = nnz(s_out) / nnz(s);

% Done