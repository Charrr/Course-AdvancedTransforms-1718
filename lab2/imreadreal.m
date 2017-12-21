function im = imreadreal(filename)
% Read file, plot, and convert to real

% Read the file
im_uint8 = imread(filename);
% Convert to real
im = double(im_uint8);
% Plot
imagesc(im); 
colormap gray; 
axis image;
