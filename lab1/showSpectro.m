sizes = 2.^(8:16);
% sizes = [2, 5, 10, 20, 50, 100, 200, 500, 1000];
figure('Name','Spectrograms');
for i=1:9
    subplot(3,3,i), 
    spectrogram(s_male, hanning(sizes(i)));
end