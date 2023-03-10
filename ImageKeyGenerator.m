function ImgKey=ImageKeyGenerator(OrgImg)
[rows,coloumns,map]=size(OrgImg);
[cutdImg,cutrlgc]=imageCutter(OrgImg);
scramImg=randPermutator(OrgImg);
[rotatedLeft,rotatedRight,rotatedDown]=rotator(cutdImg);
rotatedLeft=catenator(rotatedLeft,cutrlgc);
rotatedRight=catenator(rotatedRight,cutrlgc);
rotatedDown=catenator(rotatedDown,cutrlgc);
scramLeft=randPermutator(rotatedLeft);
scramRight=randPermutator(rotatedRight);
scramDown=randPermutator(rotatedDown);
tempPrimaryKey1=bitxor(scramLeft,scramRight);
tempPrimaryKey2=bitxor(scramDown,scramImg);
primaryKey=bitxor(tempPrimaryKey1,tempPrimaryKey2);
[primaryKey,keylgc]=imageCutter(primaryKey);
[redKey,greenKey,blueKey]=rgbComponent(primaryKey);
[redKlr,redKud,redKrl]=flipper(redKey);
[greenKlr,greenKud,greenKrl]=flipper(greenKey);
[blueKlr,blueKud,blueKrl]=flipper(blueKey);
[redLeft,redRight,redRotate]=rotator(redKey);
[greenLeft,greenRight,greenRotate]=rotator(greenKey);  
[blueLeft,blueRight,blueRotate]=rotator(blueKey);
[redRlr,redRud,redRrl]=flipper(redRotate);
[greenRlr,greenRud,greenRrl]=flipper(greenRotate);
[blueRlr,blueRud,blueRrl]=flipper(blueRotate);
[redXored]=xorer(redKlr,redKud,redKrl,redRlr,redRud,redRrl,cutrlgc);
[greenXored]=xorer(greenKlr,greenKud,greenKrl,greenRlr,greenRud,greenRrl,cutrlgc);
[blueXored]=xorer(blueKlr,blueKud,blueKrl,blueRlr,blueRud,blueRrl,cutrlgc);
tempKey=cat(3,redXored,greenXored,blueXored);
tempKey=bitxor(tempKey,OrgImg);
redTempKey=tempKey(:,:,1);
greenTempKey=tempKey(:,:,2);
blueTempKey=tempKey(:,:,3);
temp=bitxor(redTempKey,greenTempKey);
ImgKey=bitxor(temp,blueTempKey);
end