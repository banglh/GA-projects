% initialize constants
initializeconstants;

% read image
readimage;

% calculate noise
getnoise;

%------------ INITIALIZATION -------------------
% initialize population
initializepopulation;

% calculate errors
getpopulationerrors;

% calculate fitness of individuals
getpopulationfitnesses;

%------------- GA PROCESS ------------------------
for generation = 1:N_GENERATIONS
    %-------------- SELECTION -------------------------
    selection;
    
    %-------------- CROSSOVER -------------------------
    crossover;
    
    %-------------- MUTATION -------------------------
    mutation;
    
    % print results
    if (mod(generation, 10) == 0)
        display(generation);
        display(max(FITNESSES));
    end
end