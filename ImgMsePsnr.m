function [redImgMSE,greenImgMSE,blueImgMSE,avgImgMSE,redImgPSNR,blueImgPSNR,greenImgPSNR,avgImgPSNR]=ImgMsePsnr(OrgImg,DecryptedImg)
redImgMSE=MeanSquareError(OrgImg(:,:,1),DecryptedImg(:,:,1));
greenImgMSE=MeanSquareError(OrgImg(:,:,2),DecryptedImg(:,:,2));
blueImgMSE=MeanSquareError(OrgImg(:,:,3),DecryptedImg(:,:,3));
ImgMSE=[redImgMSE,greenImgMSE,blueImgMSE];
avgImgMSE=mean(ImgMSE);

redImgPSNR=PeakSignalNoiseRatio(OrgImg(:,:,1),DecryptedImg(:,:,1));
greenImgPSNR=PeakSignalNoiseRatio(OrgImg(:,:,2),DecryptedImg(:,:,2));
blueImgPSNR=PeakSignalNoiseRatio(OrgImg(:,:,3),DecryptedImg(:,:,3));
ImgPSNR=[redImgPSNR,blueImgPSNR,greenImgPSNR];
avgImgPSNR=mean(ImgPSNR);
end