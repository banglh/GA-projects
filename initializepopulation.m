function initializepopulation()
% ok
% function initializepopulation initializes a population with POP_SIZE
% individuals.

global POP_SIZE
global N_AMP_BITS
global N_FEQ_ROW_BITS
global N_FEQ_COL_BITS
global POP

POP = int8(rand(POP_SIZE, N_AMP_BITS + N_FEQ_ROW_BITS + N_FEQ_COL_BITS));
end