% Correlation coefficient
[redCorr,greenCorr,blueCorr]=corRelImages(OrgImg,CipherImg);
Correl=[redCorr,greenCorr,blueCorr];
avgCorr=mean(Correl);
%Diffrential Attack
[redNPCR,greenNPCR,blueNPCR,avgNPCR,redUACI,greenUACI,blueUACI,avgUACI]=DiffrentialAttack(OrgImg);
