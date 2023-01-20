function [scramb]=randPermutator(ip)
    rgbImage=ip;
    [rows, columns, numberOfColorBands] = size(rgbImage);
global scrambleOrder
    scrambleOrder = randperm(rows*columns);

    redChannel = rgbImage(:, :, 1);
    greenChannel = rgbImage(:, :, 2);
    blueChannel = rgbImage(:, :, 3);

    redChannel = redChannel(scrambleOrder);
    greenChannel = greenChannel(scrambleOrder);
    blueChannel = blueChannel(scrambleOrder);

    redChannel = reshape(redChannel, [rows, columns]);
    greenChannel = reshape(greenChannel, [rows, columns]);
    blueChannel = reshape(blueChannel, [rows, columns]);

    scramb = cat(3, redChannel, greenChannel, blueChannel);
end