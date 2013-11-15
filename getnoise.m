function getnoise()
% the function getnoise calculates the true noise which is
% added to the original image

global TRUE_NOISE
global ORIGINAL_IMAGE
global CORRUPTED_IMAGE

TRUE_NOISE = double(CORRUPTED_IMAGE - ORIGINAL_IMAGE);
end