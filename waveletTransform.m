function [tra]=waveletTransform(img)
[a,h,v,d]=dwt2(img,'haar');
tra1=[a,h];
tra2=[v,d];
tra=[tra1;tra2];
end