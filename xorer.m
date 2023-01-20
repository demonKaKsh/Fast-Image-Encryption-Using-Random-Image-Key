function [xored]=xorer(img1,img2,img3,img4,img5,img6,cutrlgc)
[i1]=catenator(img1,cutrlgc);
[i2]=catenator(img2,cutrlgc);
[i3]=catenator(img3,cutrlgc);
[i4]=catenator(img4,cutrlgc);
[i5]=catenator(img5,cutrlgc);
[i6]=catenator(img6,cutrlgc);
temp=bitxor(i1,i2);
temp=bitxor(temp,i3);
temp=bitxor(temp,i4);
temp=bitxor(temp,i5);
temp=bitxor(temp,i6);
xored=temp;
end
