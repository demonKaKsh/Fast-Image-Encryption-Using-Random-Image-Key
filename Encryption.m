[rows,coloumns,colorBands]=size(OrgImg)
redImage=Image(:,:,1);
greenImage=Image(:,:,2);
blueImage=Image(:,:,3);
scrambleOrder=randperm(rows*coloumns);
rSimg=redImage(scrambleOrder);
gSimg=greenImage(scrambleOrder);
bSimg=blueImage(scrambleOrder);
redChannel = reshape(rSimg, [rows, coloumns]);
greenChannel = reshape(gSimg, [rows, coloumns]);
blueChannel = reshape(bSimg, [rows, coloumns]);
redChannel=bitxor(redChannel,ImgKey);
greenChannel=bitxor(greenChannel,ImgKey);
blueChannel=bitxor(blueChannel,ImgKey);
EncImg=cat(3,redChannel,greenChannel,blueChannel);
figure;
imshow(EncImg)