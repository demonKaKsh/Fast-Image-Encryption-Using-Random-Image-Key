% Demo to calculate PSNR of a gray scale image.
% http://en.wikipedia.org/wiki/PSNR
% by ImageAnalyst 
clc; 
close all; 
clearvars; 
workspace;
% Read in standard MATLAB demo image.
grayImage = imread('cameraman.tif');
[rows columns] = size(grayImage);
subplot(2, 2, 1);
imshow(grayImage, []);
title('Original Grey Scale Image');
set(gcf, 'Position', get(0,'Screensize')); % Maximize figure.
% Add noise to it.
noisyImage = imnoise(grayImage, 'gaussian', 0, 0.003);
subplot(2, 2, 2);
imshow(noisyImage, []);
title('Noisy Image');
% Calculate mean square error.
mseImage = (double(grayImage) - double(noisyImage)) .^ 2;
subplot(2, 2, 3);
imshow(mseImage, []);
title('MSE Image');
mse = sum(sum(mseImage)) / (rows * columns);
% Calculate PSNR (Peak Signal to noise ratio).
PSNR = 10 * log10( 256^2 / mse);
message = sprintf('The mean square error is %.2f\nThe PSNR = %.2f', ...
  mse, PSNR);
msgbox(message);
% set(gcf, 'Position', get(0,'Screensize')); % Maximize figure.