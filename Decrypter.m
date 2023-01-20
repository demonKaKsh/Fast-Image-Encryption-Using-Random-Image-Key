red=CipherImg(:,:,1);
green=CipherImg(:,:,2);
blue=CipherImg(:,:,3);
red=bitxor(red,ImgKey);
green=bitxor(green,ImgKey);
blue=bitxor(blue,ImgKey);
DecryptedImg=cat(3,red,green,blue);
DecryptedImg=Unscrambler(DecryptedImg);
figure;
imshow(DecryptedImg)
title('Decrypted Image')
figure;
imhist(DecryptedImg)