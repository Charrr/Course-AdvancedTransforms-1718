function [  ] = complexity( size )
%COMPLEXITY Summary of this function goes here
%   Detailed explanation goes here

% Calculate dft duration.
for i=1:length(size)
    tic;       % start timing
    dft(ones(floor(size(i))));
    dfttime(i) = toc;       % end timing and record
end

% Calculate fft duration.
for i=1:length(size)
    tic;       % start timing
    fft(ones(floor(size(i))));
    ffttime(i) = toc;       % end timing and record
end

loglog(size, dfttime);
hold on
loglog(size, ffttime);
legend('DFT','FFT');
hold off

end

