function [  ] = complexity( size )
%COMPLEXITY compares the complexity of DFT and FFT by plotting the comsumed time with respect to different sizes of ones(1,n) for both DFT and FFT on
%the same graph.
%   size is an array of the signal length, i.e., the n in ones(1,n).

% Initialisation.
len = length(size);
dfttime = zeros(1,len);
ffttime = zeros(1,len);

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
xlabel('n');
ylabel('consumed time');

end