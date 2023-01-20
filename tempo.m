function [y]=temp(x)
scrambleOrder=(512*512);
r=x(:,:,1);
g=x(:,:,2);
b=x(:,:,3);
so=(512*512);
so=randperm(512*512);
r=r(so);
g=g(so);
b=b(so);
r=reshape(r,[512,512]);
g=reshape(g,[512,512]);
b=reshape(b,[512,512]);
y=cat(3,r,g,b);
end