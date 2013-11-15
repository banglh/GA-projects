function getpopulationerrors()
% function getpopulationerrors compute errors of each individuals
global POP
global ERRORS
global POP_SIZE

% initialize ERRORS array
ERRORS = zeros(POP_SIZE, 1);

% get errors
for i = 1 : POP_SIZE
  % convert the individual to parameters values
  [noiseAmp, noiseFreqRow, noiseFreqCol] = genetoparameters(POP(i,:));
  
  % calculate the noise based on the parameters values
  noise = calculatenoise(noiseAmp, noiseFreqRow, noiseFreqCol);
  
  % calculate error
  ERRORS(i) = calculateerror(noise);
end
end