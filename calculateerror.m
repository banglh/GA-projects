function error = calculateerror(noise)
% ok
% function calculateerror calculate the error of predicted noise compared
% with the true noise value

global TRUE_NOISE

% error is the sum of square delta
% delta = noise - TRUE_NOISE;
% error = sum(sum(delta .^ 2));

% error is the absolute value of delta
delta = abs(noise - TRUE_NOISE);
error = mean2(delta);

end