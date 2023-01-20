function [squaredImage,remainingImage]=coloumnGreater(I)
[rows,coloumn,map]=size(I);
squaredImage=I(:,1:rows,:);
remainingImage=I(:,rows+1:end,:);
end