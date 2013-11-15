function error = calculateerror(noise)
% function calculateerror calculate the sum square error of predicted noise compared
% with the true noise value

global TRUE_NOISE

delta = noise - TRUE_NOISE;
% error is the sum of square delta
error = sum(sum(delta .^ 2));
end