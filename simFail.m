function [elementFail] = simFail(elementCount, pFail)

% Number of each network element (i.e. number of pipes)
lakeNum = elementCount(1);
treatmentNum = elementCount(2);
tankNum = elementCount(3);
cbNum = elementCount(4);
valveNum = elementCount(5);
pumpNum = elementCount(6);
pipeNum = elementCount(7);
generationNum = elementCount(8);
substationNum = elementCount(9);
switchNum = elementCount(10);
lineNum = elementCount(11);
poleNum = elementCount(12);
roadNum = elementCount(13);

% Failure probabilities
pLakeFail = pFail{1};
pTreatmentFail = pFail{2};
pTankFail = pFail{3};
pCBFoundationFail = pFail{4};
pCBShelterFail = pFail{5};
pValveFail = pFail{6};
pPumpFoundationFail = pFail{7};
pPumpShelterFail = pFail{8};
pPipeFail = pFail{9};
pGenerationFail = pFail{10};
pSubstationFoundationFail = pFail{11};
pSubstationComponentFail = pFail{12};
pSwitchFail = pFail{13};
pLineFail = pFail{14};
pPoleFoundationFail = pFail{15};
pPoleComponentFail = pFail{16};
pRoadFail = pFail{17};

% Initialize cell array for failure output
elementFail = cell(13,1);

for i = 1:lakeNum
    lakeFail(i) = simLakeFail(pLakeFail(i));
end
elementFail{1} = lakeFail;

for i = 1:treatmentNum
    treatmentFail(i) = simTreatmentFail(pTreatmentFail(i));
end
elementFail{2} = treatmentFail;

for i = 1:tankNum
    tankFail(i) = simTankFail(pTankFail(i));
end
elementFail{3} = tankFail;

for i = 1:cbNum
    cbFail(i) = simCBFail(pCBFoundationFail(i), pCBShelterFail(i));
end
elementFail{4} = cbFail;

for i = 1:valveNum
    valveFail(i) = simValveFail(pValveFail(i));
end
elementFail{5} = valveFail;

for i = 1:pumpNum
    pumpFail(i) = simPumpFail(pPumpFoundationFail(i), pPumpShelterFail(i));
end
elementFail{6} = pumpFail;

for i = 1:pipeNum
    pipeFail(i) = simPipeFail(pPipeFail(i));
end
elementFail{7} = pipeFail;

for i = 1:generationNum
    generationFail(i) = simGenerationFail(pGenerationFail(i));
end
elementFail{8} = generationFail;

for i = 1:substationNum
    substationFail(i) = simSubstationFail(pSubstationFoundationFail(i), pSubstationComponentFail(i));
end
elementFail{9} = substationFail;

for i = 1:switchNum
    switchFail(i) = simSwitchFail(pSwitchFail(i));
end
elementFail{10} = switchFail;

for i = 1:lineNum
    lineFail(i) = simLineFail(pLineFail(i));
end
elementFail{11} = lineFail;

for i = 1:poleNum
    poleFail(i) = simPoleFail(pPoleFoundationFail(i), pPoleComponentFail(i));
end
elementFail{12} = poleFail;

for i = 1:roadNum
    roadFail(i) = simRoadFail(pRoadFail(i));
end
elementFail{13} = roadFail;