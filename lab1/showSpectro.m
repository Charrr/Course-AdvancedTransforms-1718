% This is to show 9 spectrograms at the same time.
% Well... just for convenience and comparison.
sizes = 2.^(8:16);

% sizes = [2, 5, 10, 20, 50, 100, 200, 500, 1000];
figure('Name','Spectrograms');
for i=1:9
    subplot(3,3,i), 
    spectrogram(x, hanning(sizes(i)));
end
