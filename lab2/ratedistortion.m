function ratedistortion(maxthreshold)
% Plot rate-distortion curve up to max threshold
%
nsteps = 20+1;	% Set the number of steps to plot

step = maxthreshold/(nsteps-1);	% Size of each step

% Create empty rate and distortion vectors 
ratevec = [];
distvec = [];

% Loop for each value of the threshold
for threshold=0:step:maxthreshold
   % Add the compression ratio to the "rate" curve
   ratevec = [ratevec comp_ratio(threshold)];
   % Add the distortion value to the "distortion" curve
   distvec = [distvec distortion(threshold)];
end
% Plot the curves ('-o' means line with a circle at each plot point)
plot(ratevec,distvec,'-o');
% Label the graph
xlabel('Compression Ratio (1 = no compression)');
ylabel('Distortion');