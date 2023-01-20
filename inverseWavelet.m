function [img]=inverseWavelet(ipImg)
[rows,col]=size(ipImg);
a=ipImg(1:rows/2,1:col/2);
h=ipImg(rows/+1:end,1:col/2);
v=ipImg(1:rows/2,col/2+1:end);
d=ipImg(rows/2+1:end,col/2+1:end);
img = idwt2(a,h,v,d,'haar');
end
