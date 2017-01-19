function [treatmentFail] = simTreatmentFail(pTreatmentFail);

% Treatment plant failure
% P(treatment fail) = P(treatment plant building fail OR treatment plant components fail)

if rand(1) <= pTreatmentFail
    treatmentFail = 1;
else
    treatmentFail = 0;
end