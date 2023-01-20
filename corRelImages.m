function [redCorr,greenCorr,blueCorr,avgCorr]=corRelImages(OrgImg,CipherImg)
redOrg=double(OrgImg(:,:,1));
greenOrg=double(OrgImg(:,:,2));
blueOrg=double(OrgImg(:,:,3));

redCipher=double(CipherImg(:,:,1));
greenCipher=double(CipherImg(:,:,2));
blueCipher=double(CipherImg(:,:,3));

redCorr=corr2(redOrg,redCipher);
greenCorr=corr2(greenOrg,greenCipher);
blueCorr=corr2(blueOrg,blueCipher);

Correl=[redCorr,greenCorr,blueCorr];
avgCorr=mean(Correl);
end