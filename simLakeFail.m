function [lakeFail] = simLakeFail(pLakeFail);

% Lake failure
% P(lake fail) = P(water intake fail)

if rand(1) <= pLakeFail
    lakeFail = 1;
else
    lakeFail = 0;
end
