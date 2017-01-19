
% Lake failure
% P(lake fail) = P(water intake fail)

if rand() <= pLakeFail
    lakeFail = 1;
else
    lakeFail = 0;
end


% Treatment plant failure
% P(treatment fail) = P(treatment plant building fail OR treatment plant components fail)

if rand() <= pTreatmentBuildingFail
    treatmentBuildingFail = 1;
else
    treatmentBuildingFail = 0;
end

if rand() <= pTreatmentComponentFail
    treatmentComponentFail = 1;
else
    treatmentComponentFail = 0;
end

if (treatmentBuildingFail | treatmentComponentFail) == 1
    treatmentFail = 1;
else
    treatmentFail = 0;
end


% Tank failure
% P(tank fail) = P(tank foundation fail OR tank component fail)

if rand() <= pTankFoundationFail
    tankFoundationFail = 1;
else
    tankFoundationFail = 0;
end

if rand() <= pTankComponentFail
    tankComponentFail = 1;
else
    tankComponentFail = 0;
end

if (tankFoundationFail | tankComponentFail) == 1
    tankFail = 1;
else
    tankFail = 0;
end


% Chlorine booster failure
% P(CB fail) = P(CB foundation fail OR CB component fail OR CB shelter fail)

if rand() <= pCBFoundationFail
    cbFoundationFail = 1;
else
    cbFoundationFail = 0;
end

if rand() <= pCBComponentFail
    cbComponentFail = 1;
else
    cbComponentFail = 0;
end

if rand() <= pCBShelterFail
    cbShelterFail = 1;
else
    cbShelterFail = 0;
end

if (cbFoundationFail | cbComponentFail | cbShelterFail) == 1
    cbFail = 1;
else
    cbFail = 0;
end


% Valve failure
% P(valve fail) = P(valve component fail)

if rand() <= pValveFail
    valveFail = 1;
else
    valveFail = 0;
end


% Pump failure
% P(pump fail) = P(pump foundation fail OR pump component fail OR pump shelter fail)

if rand() <= pPumpFoundationFail
    pumpFoundationFail = 1;
else
    pumpFoundationFail = 0;
end

if rand() <= pPumpComponentFail
    pumpComponentFail = 1;
else
    pumpComponentFail = 0;
end

if rand() <= pPumpShelterFail
    pumpShelterFail = 1;
else
    pumpShelterFail = 0;
end

if (pumpFoundationFail | pumpComponentFail | pumpShelterFail) == 1
    pumpFail = 1;
else
    pumpFail = 0;
end


% Pipe failure
% P(pipe fail) = P(pipe component fail)

if rand() <= pPipeFail
    pipeFail = 1;
else
    pipeFail = 0;
end


% Generation failure
% P(generation fail) = P(generation component fail)

if rand() <= pGenerationFail
    generationFail = 1;
else
    generationFail = 0;
end


% Substation failure
% P(substation fail) = P(substation foundation fail OR substation components fail)

if rand() <= pSubstationFoundationFail
    substationFoundationFail = 1;
else
    substationFoundationFail = 0;
end

if rand() <= pSubstationComponentFail
    substationComponentFail = 1;
else
    substationComponentFail = 0;
end

if (substationFoundationFail | substationComponentFail) == 1
    substationFail = 1;
else
    substationFail = 0;
end


% Switch failure
% P(switch fail) = P(switch component fail)

if rand() <= pSwitchFail
    switchFail = 1;
else
    switchFail = 0;
end


% Line failure
% P(line fail) = P(line component fail)

if rand() <= pLineFail
    lineFail = 1;
else
    lineFail = 0;
end


% Pole failure
% P(pole fail) = P(pole foundation fail OR pole component fail)

if rand() <= pPoleFoundationFail
    poleFoundationFail = 1;
else
    poleFoundationFail = 0;
end

if rand() <= pPoleComponentFail
    poleComponentFail = 1;
else
    poleComponentFail = 0;
end

if (poleFoundationFail | poleComponentFail) == 1
    poleFail = 1;
else
    poleFail = 0;
end