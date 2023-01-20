function [rotatedLeft,rotatedRight,rotatedDown]=rotator(img)
[rows,coloumns,maps]=size(img);
for i=coloumns:-1:2
    temprotimg{i}=imrotate(img{i},90);
end
rotatedLeft=temprotimg;
for i=coloumns:-1:2
    temprotimg{i}=imrotate(img{i},180);
end
rotatedDown=temprotimg;
for i=coloumns:-1:2
    temprotimg{i}=imrotate(img{i},-90);
end
rotatedRight=temprotimg;
end