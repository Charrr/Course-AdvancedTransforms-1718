t = linspace(0,1,512);
st = testsig(t);

st1 = dwt_haar(st, 1);
st2 = dwt_haar(st, 2);
st3 = dwt_haar(st, 3);
st4 = dwt_haar(st, 4);
st5 = dwt_haar(st, 5);
st6 = dwt_haar(st, 6);
st7 = dwt_haar(st, 7);
st8 = dwt_haar(st, 8);
st9 = dwt_haar(st, 9);
st10 = dwt_haar(st, 10);
st11 = dwt_haar(st, 11);

figure, 
subplot(3,2,1), plot(t, st);    title('Original');
subplot(3,2,2), plot(t, st1);   title('After 1 step');
subplot(3,2,3), plot(t, st2);   title('After 2 steps');
subplot(3,2,4), plot(t, st3);   title('After 3 steps');
subplot(3,2,5), plot(t, st6);   title('After 6 steps');
subplot(3,2,6), plot(t, st10);   title('After 10 steps');


thres = 0.5;
st_compressed = compress(st, thres);
st_recovered = uncompress(st_compressed);

figure,
subplot(2,2,1), plot(t, st);    title('Original');
subplot(2,2,3), plot(t, dwt_haar(st,5));    title('Orignial through DWT');
subplot(2,2,4), plot(t, st_compressed);   title('Compressed');
subplot(2,2,2), plot(t, st_recovered);   title('Recovered');

figure,
ratedistortion(max(st));
legend('steps=0','steps=1','steps=2','steps=3','steps=6','steps=15','steps=50');