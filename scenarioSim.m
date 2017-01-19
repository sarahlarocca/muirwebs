function [elementFail_] = scenarioSim(elementCount, pFail, numScenario, numSim);

elementFail_ = cell(numScenario,1);
for i = 1:numScenario
    elementFail_{i} = cell(numSim,1);
end

for i = 1:numScenario
	for j = 1:numSim
        elementFail_{i}{j} = simFail(elementCount, pFail{i});
	end
end