function [squaredImage,remainingImage]=rowsGreater(I)
[rows,coloumn,map]=size(I);
squaredImage=I(1:coloumn,:,:);
remainingImage=I(coloumn+1:end,:,:);
end