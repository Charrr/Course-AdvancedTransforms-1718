sizes = 2.^(4:12);
figure('Name','Spectrograms');
for i=1:9
    subplot(3,3,i), 
    spectrogram(x, hanning(sizes(i))); 
    title('hanning');
end