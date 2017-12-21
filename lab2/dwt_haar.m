function  dwtc = dwt_haar(c, steps)
% DWTC = CWT_HARR(C) - Discrete Wavelet Transform using Haar filter
%
% M D Plumbley Nov 2003

N = length(c)-1;	% Max index for filter: 0 .. N
% If no steps to do, or the sequence is a single sample, the DWT is itself
if (0==N | steps == 0)
   dwtc = c;
   return
end

% Check that N+1 is divisible by 2
if (mod(N+1,2)~=0)
   disp(['Not divisible 2: ' num2str(N+1)]);
   return
end

% Set the Haar analysis filter
h0 = [1/2  1/2];		% Haar Low-pass filter
h1 = [-1/2 1/2];		% Haar High-pass filter

% Filter the signal
lowpass_c = conv(h0, c);
hipass_c  = conv(h1, c);

% Subsample by factor of 2 and scale
c1 = sqrt(2)*lowpass_c(2:2:end);
d1 = sqrt(2)*hipass_c(2:2:end);

% Recursively call dwt_haar on the low-pass part, with 1 fewer steps
dwtc1 = dwt_haar(c1, steps-1);

% Construct the DWT from c1 and d1
dwtc = [dwtc1 d1];

% Done
return