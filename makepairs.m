function pairs = makepairs()
% the makepairs() function makes pairs of parent to crossover
% randomly make pairs
global POP_SIZE

pairs = randperm(POP_SIZE);
end