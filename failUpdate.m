function [elementFailUpdate] = failUpdate(elementFail_, numUpdate, numScenario, numSim, elementCount, dependency);

elementFailUpdate = elementFail_;

for u = 1:numUpdate
	for i = 1:numScenario                       % for a given scenario
		for j = 1:numSim                        % for each run
            for k = 1:length(elementCount)      % for each type of network element
                for m = 1:elementCount(k)       % for each individual network element
                    if elementFailUpdate{i}{j}{k}(m) == 1                   % if element has failed
                        for s = 1:length(elementCount)              
                            if ~isempty(dependency{s,k})
                                for t = 1:elementCount(s)
                                    if dependency{s,k}(t,m) == 1            % if element is dependent on failed element
                                        elementFailUpdate{i}{j}{s}(t) = 1;  % element fails
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
	end
end