function selection()
% ok
% function selection using roulette selector to select individuals for the
% next generation

global FITNESSES
global POP_SIZE
global POP

% Initialize distribution
selectionPossibilities = FITNESSES ./ sum(FITNESSES);

% An index vector for individuals
individualsIndex = 1:POP_SIZE;

% selection new individuals
newPopulationIndexes = randsample(individualsIndex, POP_SIZE, true, selectionPossibilities);

% create new population
POP = POP(newPopulationIndexes, :);

% recalculate population fitnesses
getpopulationerrors();
getpopulationfitnesses();
end