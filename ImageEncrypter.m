function CipherImg=ImageEncrypter(OrgImg,ImgKey)
ScrambledImage=randPermutator(OrgImg);
red=ScrambledImage(:,:,1);
green=ScrambledImage(:,:,2);
blue=ScrambledImage(:,:,3);
red=bitxor(red,ImgKey);
green=bitxor(green,ImgKey);
blue=bitxor(blue,ImgKey);
CipherImg=cat(3,red,green,blue);
end