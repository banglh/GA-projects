function getpopulationfitnesses()
% ok
% function getpopulationfitnesses calculates the fitness of individuals in
% the population

global ERRORS
global FITNESSES
global MAX_NOISE_MEAN

% FITNESSES = 1 ./ (ERRORS + 1);
FITNESSES = MAX_NOISE_MEAN - ERRORS;
end