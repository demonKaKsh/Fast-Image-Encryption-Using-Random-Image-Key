function showcase(c)
[r,com]=size(c);
for i=com:-1:2
    a=c{i};
figure;
imshow(a)
end
end