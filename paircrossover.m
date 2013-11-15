function [childA, childB] = paircrossover(parentA, parentB)
% the paircrossover() function take two parents to do crossover and return
% the children

global CROSSOVER_RATE

childA = parentA;
childB = parentB;

% ------------- one point crossover ----------------

% crossover
if (rand() < CROSSOVER_RATE)
    % choose crossover point
    crossoverPoint = randi(length(parentA)-1, 1) + 1;
    
    % do crossover
    childA(crossoverPoint:length(childA)) = parentB(crossoverPoint:length(parentB));
    childB(crossoverPoint:length(childB)) = parentA(crossoverPoint:length(parentA));
end
end