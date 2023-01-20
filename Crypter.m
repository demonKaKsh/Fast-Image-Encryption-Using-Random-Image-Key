ScrambledImage=randPermutator(MainImg);
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
%Decryption
red=Imaga(:,:,1);
green=Imaga(:,:,2);
blue=Imaga(:,:,3);
red=bitxor(red,ImgKey);
green=bitxor(green,ImgKey);
blue=bitxor(blue,ImgKey);
Imag=cat(3,red,green,blue);
Imag=Unscrambler(Imag);
figure;
imshow(Imag)
title('Decrypted Image')