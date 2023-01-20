function [lr,ud,rl]=flipper(img)
[rows,coloumns,maps]=size(img);
for i=coloumns:-1:2
lr{i}=fliplr(img{i});
ud{i}=flipud(img{i});
rl{i}=fliplr(img{i});
end