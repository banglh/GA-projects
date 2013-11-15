global POP_SIZE
global CROSSOVER_RATE
global MUTATION_RATE
global N_GENERATIONS
global N_AMP_BITS
global N_FEQ_ROW_BITS
global N_FEQ_COL_BITS
global MIN_NOISE_AMP
global MAX_NOISE_AMP
global MIN_NOISE_FREQ_ROW
global MAX_NOISE_FREQ_ROW
global MIN_NOISE_FREQ_COL
global MAX_NOISE_FREQ_COL

% population size
POP_SIZE = 100;

% crossover rate
CROSSOVER_RATE = 0.5;

% mutation rate
MUTATION_RATE = 0.5;

% number of generations
N_GENERATIONS = 100;

% max and min values of parameters
MIN_NOISE_AMP = 0.0;
MAX_NOISE_AMP = 30.0; 
MIN_NOISE_FREQ_ROW = 0.0;
MAX_NOISE_FREQ_ROW = 0.01;
MIN_NOISE_FREQ_COL = 0.0; 
MAX_NOISE_FREQ_COL = 0.01;

% number of bits used to represent each parameter
N_AMP_BITS = 8;
N_FEQ_ROW_BITS = 8; 
N_FEQ_COL_BITS = 8;

%-------------- global variables ----------------
global TRUE_NOISE
global POP
global FITNESSES
global ERRORS
global ORIGINAL_IMAGE
global CORRUPTED_IMAGE