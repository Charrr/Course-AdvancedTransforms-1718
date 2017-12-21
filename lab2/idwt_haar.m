function  idwtc = idwt_haar(c, steps)
% IDWTC = IDWT_HARR(C) - Inverse Discrete Wavelet Transform using Haar filter
%
% M D Plumbley Nov 2003

N = length(c)-1;	% Max index for filter: 0 .. N
% If no steps to do, or the sequence is a single sample, the DWT is itself
if (0==N | steps == 0)
   idwtc = c;
   return
end

% Check that N+1 is divisible by 2
if (mod(N+1,2)~=0)
   disp(['Not divisible 2: ' num2str(N+1)]);
   return
end

% Set the Haar analysis filters
h0 = [1/2  1/2];		% Haar Low-pass filter
h1 = [-1/2 1/2];		% Haar High-pass filter

% Resynthesis filters are flip (time-reverse) of analysis filters
g0 = h0(end:-1:1);	% This will be [1/2  1/2] for Haar
g1 = h1(end:-1:1);	% This will be [1/2 -1/2] for Haar

% Split signal into the two halves
N2 = (N+1)/2;
c1 = c(1:N2);	     % First half of signal
d1 = c(N2+1:end);   % Second half of signal

% Recursively call idwt_haar on the first half, with 1 fewer steps
idwtc1 = idwt_haar(c1, steps-1);

% Upsample the signals: first c ...
for i=1:N2
   up_c(2*i-1) = idwtc1(i);	% Transfer odd samples
   up_c(2*i)   = 0;				% Even samples set to zero
end
% ... then d
for i=1:N2
   up_d(2*i-1) = d1(i);
   up_d(2*i)   = 0;
end

% Filter the signals
filt_c = conv(g0, up_c);
filt_d = conv(g1, up_d);

% Add and scale
idwtc = sqrt(2)*(filt_c + filt_d);

% Answer is defined for n=0..N (in Matlab, 1 to N)
idwtc = idwtc(1:N+1);

% Done
return