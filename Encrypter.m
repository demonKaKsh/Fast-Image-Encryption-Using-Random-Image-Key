ScrambledImage=randPermutator(MainImg);
red=ScrambledImage(:,:,1);
green=ScrambledImage(:,:,2);
blue=ScrambledImage(:,:,3);
red=bitxor(red,ImgKey);
green=bitxor(green,ImgKey);
blue=bitxor(blue,ImgKey);
CipherImg=cat(3,red,green,blue);
figure;
imshow(CipherImg)
title('Encrypted Image')
figure;
imhist(CipherImg)
imwrite(CipherImg,'CipherImage.png')