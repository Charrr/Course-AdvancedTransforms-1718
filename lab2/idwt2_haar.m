function x = idwt2_haar( y, steps )
% 2D Haar Inverse Discrete Wavelet Transform

% Get the size of y as (n x m)
[n, m] = size(y);
% Create matrix to hold the answer
x = zeros(n,m);
% First apply the IDWT to the rows of x
for i=1:n
    row = y(i,:);						% Get the i-th row
    row = idwt_haar(row, steps);	% Transform it
    x(i,:) = row;						% Put into i-th column of x
end
% Now apply IDWT to columns
for j=1:n
    col = x(:,j)';						% Get the i-th column (as a row vector)
    col = idwt_haar(col, steps);	% Transform it
    x(:,j) = col';						% Put back (as column) into i-th column of x
end

end

