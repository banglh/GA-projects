function getpopulationfitnesses()
% function getpopulationfitnesses calculates the fitness of individuals in
% the population by the formula
% fitness = 1 / (error + 1)

global ERRORS
global FITNESSES

FITNESSES = 1 ./ (ERRORS + 1);
end