function [noiseAmp, noiseFreqRow, noiseFreqCol] = genetoparameters(gene)
% ok
% function genetoparameters convert a gene to parameters value

global N_AMP_BITS
global N_FEQ_ROW_BITS
global N_FEQ_COL_BITS
global MIN_NOISE_AMP
global MAX_NOISE_AMP
global MIN_NOISE_FREQ_ROW
global MAX_NOISE_FREQ_ROW
global MIN_NOISE_FREQ_COL
global MAX_NOISE_FREQ_COL

% get noisAmp value (converted from gene(1:N_AMP_BITS))
noiseAmp = bits2value(gene(1 : N_AMP_BITS), MIN_NOISE_AMP, MAX_NOISE_AMP);

% get noiseFreqRow value (converted from gene(N_AMP_BITS + 1 : N_AMP_BITS + N_FEQ_ROW_BITS))
noiseFreqRow = bits2value(gene(N_AMP_BITS + 1 : N_AMP_BITS + N_FEQ_ROW_BITS), MIN_NOISE_FREQ_ROW, MAX_NOISE_FREQ_ROW);

% get noiseFreqCol value (converted from gene(N_AMP_BITS + N_FEQ_ROW_BITS + 1 : length(gene)))
noiseFreqCol = bits2value(gene(N_AMP_BITS + N_FEQ_ROW_BITS + 1 : length(gene)), MIN_NOISE_FREQ_COL, MAX_NOISE_FREQ_COL);

end