% This is some intialisation.
s1 = ones(1,64);
s2 = ((1:64)==1);
w0 = 25/4;
s3 = sin(((1:64)-1)*2*pi*w0/100);
T = 8;
s4 = [0:31 32:-1:1]<T;
s_female = audioread('female07_16K.wav');
s_male = audioread('male08_16K.wav');
[x,fs] = audioread('piccolo.wav');

% Since 'specgram' is deprecated, 'spectrogram' is used instead, 
% which is essentially the same.
