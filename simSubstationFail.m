function [substationFail] = simSubstationFail(pSubstationFoundationFail, pSubstationComponentFail)

% Substation failure
% P(substation fail) = P(substation foundation fail OR substation components fail)

if rand(1) <= pSubstationFoundationFail
    substationFoundationFail = 1;
else
    substationFoundationFail = 0;
end

if rand(1) <= pSubstationComponentFail
    substationComponentFail = 1;
else
    substationComponentFail = 0;
end

if (substationFoundationFail | substationComponentFail) == 1
    substationFail = 1;
else
    substationFail = 0;
end