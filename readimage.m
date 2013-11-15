function readimage()
% readimage reads the original image and the corrupted image

global ORIGINAL_IMAGE
global CORRUPTED_IMAGE

ORIGINAL_IMAGE = imread('lena_resize1.bmp');
CORRUPTED_IMAGE = imread('lena_resize_noisy.bmp');
end