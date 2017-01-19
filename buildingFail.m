function [powerFail, waterFail, roadFail] = buildingFail(elementFailUpdate, numScenario, numSim)

powerFail = zeros(numScenario, numSim, 3);          % initialize powerFail matrix
waterFail = zeros(numScenario, numSim, 3);          % initialize waterFail matrix
roadFail = zeros(numScenario, numSim, 3);           % initialize roadFail matrix

for i = 1:numScenario
    for j = 1:numSim
        if elementFailUpdate{i}{j}{11}(13) == 1
            powerFail(i,j,1) = 1;
        end
        if elementFailUpdate{i}{j}{11}(11) == 1
            powerFail(i,j,2) = 1;
        end
        if elementFailUpdate{i}{j}{11}(9) == 1
            powerFail(i,j,3) = 1;            
        end
        if elementFailUpdate{i}{j}{7}(7) == 1
            waterFail(i,j,1) = 1;
        end
        if elementFailUpdate{i}{j}{7}(8) == 1
            waterFail(i,j,2) = 1;
        end
        if elementFailUpdate{i}{j}{7}(10) == 1
            waterFail(i,j,3) = 1;            
        end        
        if elementFailUpdate{i}{j}{13}(2) == 1
            roadFail(i,j,1) = 1;
            roadFail(i,j,2) = 1;
            roadFail(i,j,3) = 1;
        end
    end
end