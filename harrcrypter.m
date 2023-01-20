%seprating RGB Channels
red=MainImg(:,:,1);
green=MainImg(:,:,2);
blue=MainImg(:,:,3);
%Wavelet Transform
redharr=waveletTransform(red);
greenharr=waveletTransform(green);
blueharr=waveletTransform(blue);
harr = cat(3, redharr, greenharr, blueharr);
%Scrambling
ScrambledImage=randPermutator(harr);
red=ScrambledImage(:,:,1);
green=ScrambledImage(:,:,2);
blue=ScrambledImage(:,:,3);


red=bitxor(red,ImgKey);
green=bitxor(green,ImgKey);
blue=bitxor(blue,ImgKey);
Imaga=cat(3,red,green,blue);
figure;
imshow(Imaga)
title('Encrypted Image')
figure;
imhist(Imaga)