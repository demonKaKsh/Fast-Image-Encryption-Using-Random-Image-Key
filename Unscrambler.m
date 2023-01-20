function [Unscramb]=Unscrambler(Img)
global scrambleOrder
[rows,columns,map]=size(Img);
redChannel = Img(:,:,1);
greenChannel = Img(:,:,2);
blueChannel = Img(:,:,3);

% Recover the image, knowing the sort order
recoverOrder = zeros([rows*columns], 2);
recoverOrder(:, 1) = 1 : (rows*columns);
recoverOrder(:, 2) = scrambleOrder;
% Sort this to find out where each scrambled location needs to be sent to.
newOrder = sortrows(recoverOrder, 2);
% Extract just column 1, which is the order we need.
newOrder = newOrder(:,1);
% Unscramble according to the recoverOrder order.
redChannel = redChannel(newOrder);
greenChannel = greenChannel(newOrder);
blueChannel = blueChannel(newOrder);
% Reshape into a 2D image
redChannel = reshape(redChannel, [rows, columns]);
greenChannel = reshape(greenChannel, [rows, columns]);
blueChannel = reshape(blueChannel, [rows, columns]);

% Recombine separate color channels into a single, true color RGB image.
scrambledImage = cat(3, redChannel, greenChannel, blueChannel);
Unscramb=scrambledImage;
end