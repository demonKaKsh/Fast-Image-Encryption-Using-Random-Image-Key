function  r_xy=CorrPixel(P)
global corrX
global corrY
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
x1 = double(P(:,1:end-1));
y1 = double(P(:,2:end));
randIndex1 = randperm(numel(x1));
randIndex1 = randIndex1(1:3000);
corrX = x1(randIndex1);
corrY = y1(randIndex1);
r_xy = corrcoef(corrX,corrY);
end