function [redCipherMSEdb,greenCipherMSEdb,blueCipherMSEdb,avgCipherMSEdb,redCipherPSNR,blueCipherPSNR,greenCipherPSNR,avgCipherPSNR]=CipherMsePsnr(OrgImg,CipherImg)
redCipherMSE=MeanSquareError(OrgImg(:,:,1),CipherImg(:,:,1));
redCipherMSEdb=db(redCipherMSE);
greenCipherMSE=MeanSquareError(OrgImg(:,:,2),CipherImg(:,:,2));
greenCipherMSEdb=db(greenCipherMSE);
blueCipherMSE=MeanSquareError(OrgImg(:,:,3),CipherImg(:,:,3));
blueCipherMSEdb=db(blueCipherMSE);
CipherMSEdb=[redCipherMSEdb,greenCipherMSEdb,blueCipherMSEdb];
avgCipherMSEdb=mean(CipherMSEdb);

redCipherPSNR=PeakSignalNoiseRatio(OrgImg(:,:,1),CipherImg(:,:,1));
greenCipherPSNR=PeakSignalNoiseRatio(OrgImg(:,:,2),CipherImg(:,:,2));
blueCipherPSNR=PeakSignalNoiseRatio(OrgImg(:,:,2),CipherImg(:,:,3));
CipherPSNR=[redCipherPSNR,blueCipherPSNR,greenCipherPSNR];
avgCipherPSNR=mean(CipherPSNR);
end