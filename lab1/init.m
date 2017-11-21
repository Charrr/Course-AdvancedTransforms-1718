s1 = ones(1,64);
s2 = ((1:64)==1);
w0 = 32;
s3 = sin(((1:64)-1)*2*pi*w0/100);
s4 = [0:31 32:-1:1]<8;
s_female = audioread('female07_16K.wav');
s_male = audioread('male08_16K.wav');
s_picc = audioread('piccolo.wav');
[x,fs] = audioread('piccolo.wav');