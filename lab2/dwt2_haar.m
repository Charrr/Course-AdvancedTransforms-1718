function y = dwt2_haar(x, steps)
% 2D Haar Discrete Wavelet Transform

% Get the size of x as (n x m)
[n, m] = size(x);
% Create matrix to hold the answer
y = zeros(n,m);
% First apply the DWT to the rows of x
for i=1:n
   row = x(i,:);						% Get the i-th row
   row = dwt_haar(row, steps);	% Transform it
   y(i,:) = row;						% Put into i-th column of y
end
% Now apply DWT to columns
for j=1:n
   col = y(:,j)';						% Get the i-th column (as a row vector)
   col = dwt_haar(col, steps);	% Transform it
   y(:,j) = col';						% Put back (as column) into i-th column of y
end

% Done
