function [pumpFail] = simPumpFail(pPumpFoundationFail, pPumpShelterFail)

% Pump failure
% P(pump fail) = P(pump foundation fail OR pump shelter fail)

if rand(1) <= pPumpFoundationFail
    pumpFoundationFail = 1;
else
    pumpFoundationFail = 0;
end

if rand(1) <= pPumpShelterFail
    pumpShelterFail = 1;
else
    pumpShelterFail = 0;
end

if (pumpFoundationFail | pumpShelterFail) == 1
    pumpFail = 1;
else
    pumpFail = 0;
end