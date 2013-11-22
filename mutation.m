function mutation()
% ok
% the mutation function do mutation on each individuals

global MUTATION_RATE
global POP

newPop = POP;

% do mutation on each individuals

% decide positions to mutate
mutationPositions = rand(size(POP)) < MUTATION_RATE;

% do mutation
newPop(mutationPositions) = xor(newPop(mutationPositions), 1);

% make new population
POP = newPop;
end