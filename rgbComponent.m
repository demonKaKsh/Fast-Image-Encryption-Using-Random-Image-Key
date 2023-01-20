function [redImg,greenImg,blueImg]=rgbComponent(cutdImg)
[rows,coloumns,maps]=size(cutdImg);
for i=coloumns:-1:2
    OrgImg=cutdImg{i};
    redImg{i}=OrgImg(:,:,1);
    greenImg{i}=OrgImg(:,:,2);
    blueImg{i}=OrgImg(:,:,3);
end