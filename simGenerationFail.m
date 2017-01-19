function [generationFail] = simGenerationFail(pGenerationFail)

% Generation failure
% P(generation fail) = P(generation component fail)

if rand(1) <= pGenerationFail
    generationFail = 1;
else
    generationFail = 0;
end