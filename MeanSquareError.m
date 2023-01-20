function [MSE]=MeanSquareError(OrgImg,DecImg)
OrgImg=double(OrgImg);
DecImg=double(DecImg);
MSE=immse(OrgImg,DecImg);
end