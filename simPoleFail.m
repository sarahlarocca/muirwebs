function [poleFail] = simPoleFail(pPoleFoundationFail, pPoleComponentFail)

% Pole failure
% P(pole fail) = P(pole foundation fail OR pole component fail)

if rand(1) <= pPoleFoundationFail
    poleFoundationFail = 1;
else
    poleFoundationFail = 0;
end

if rand(1) <= pPoleComponentFail
    poleComponentFail = 1;
else
    poleComponentFail = 0;
end

if (poleFoundationFail | poleComponentFail) == 1
    poleFail = 1;
else
    poleFail = 0;
end