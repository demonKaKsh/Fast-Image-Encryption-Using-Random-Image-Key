function [PSNR]=PeakSignalNoiseRatio(OrgImg,DecImg)
OrgImg=double(OrgImg);
DecImg=double(DecImg);
PSNR=psnr(OrgImg,DecImg);
end