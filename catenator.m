function [catenatedImage]=catenator(c,cat)
[row,coloumn]=size(cat);
image=c{end};
for i=coloumn:-1:2
    if cat{i}==1
        image=[c{i};image];
    end
    if cat{i}==0
        image=[c{i},image];
    end
    catenatedImage=image;
end
    