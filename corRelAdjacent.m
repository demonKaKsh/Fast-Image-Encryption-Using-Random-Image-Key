 I = im2double(imread('cameraman.tif'));
 c_diag = corrcoef(I(1:end-1, 1:end-1), I(2:end, 2:end))
 c_vert = corrcoef(I(1:end-1, :), I(2:end, :))
 c_horz = corrcoef(I(:, 1:end-1, :), I(:, 2:end))