function [pPowerFail, pWaterFail, pRoadFail] = pBuildingFail(powerFail,waterFail,roadFail,numScenario,numSim);
    
pPowerFail = zeros(numScenario,numSim,3);
pWaterFail = zeros(numScenario,numSim,3);
pRoadFail = zeros(numScenario,numSim,3);

for i = 1:numScenario
    for k = 1:3
        for m = 1:numSim
            pPowerFail(i,m,k) = mean(powerFail(i,1:m,k));
            pWaterFail(i,m,k) = mean(waterFail(i,1:m,k));
            pRoadFail(i,m,k) = mean(roadFail(i,1:m,k));
        end
    end
end