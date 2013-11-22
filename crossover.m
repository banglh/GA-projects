function crossover()
% ok
% the crossover function executes crossover operation on the current
% population. 
% Steps:
%      1. Choose pairs of parents
%      2. Do crossover on each pair
%      3. Get the children of each pair and make new population

global POP_SIZE
global POP

% Choose pairs of parents
crossoverPairs = makepairs();

% Do crossover on population
newPop = zeros(size(POP));
for i = 1:2:(POP_SIZE-1)
    % Do crossover on each pair
    [childA, childB] = paircrossover(POP(crossoverPairs(i), :), POP(crossoverPairs(i + 1), :));
    
    % Get the children and add them to the new population
    newPop([i,i+1],:) = [childA ; childB];
end

% make new population
POP = newPop;
end