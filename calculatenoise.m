function noise = calculatenoise(amp, freqRow, freqCol)
% ok
% function calculatenoise calculate the noise values for each pixels

global ORIGINAL_IMAGE

% initialize noise matrix
noise = zeros(size(ORIGINAL_IMAGE));

% calculate noise
rowNum = size(noise, 1);
colNum = size(noise, 2);

for row = 1:rowNum
  for col = 1:colNum
    noise(row, col) = freqRow * row + freqCol * col;
  end
end

noise = amp * sin(2 * pi * noise);

 end