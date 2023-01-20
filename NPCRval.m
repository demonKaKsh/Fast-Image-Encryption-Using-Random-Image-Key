function npcr=NPCRval(imgA,imgB)
[r,c,m]=size(imgA);
for i=1:r
    for j=1:c
        if imgA(i,j)==imgB(i,j)
            img(i,j)=0;
        else
            img(i,j)=1;
        end
    end
end
img=img(:);
sumimg=sum(img);
npcr=sumimg/(r*c);
end