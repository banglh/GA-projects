function paramValue = bits2value(binCode, minVal, maxVal)
% ok
% function bits2value convert a bits string form of a parameter to its real
% value

paramValue = double(bin2dec(num2str(binCode))) * (maxVal - minVal) / (2 ^ length(binCode) - 1) + minVal;
end