function uaci=UACIval(imgA,imgB)
[r,c,m]=size(imgA);
imgA=double(imgA);
imgB=double(imgB);
img=(abs(imgA-imgB))/255;
img=img(:);
sumimg=sum(img);
uaci=sumimg/(r*c);
end