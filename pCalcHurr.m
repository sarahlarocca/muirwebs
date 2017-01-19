function [pFail] = pCalcHurr(windSpeed, numScenario, elementCountProb, dist, elementUnif, elementMu, elementSigma)

pFail = cell(numScenario,1);

for i = 1:numScenario
    pFail{i} = cell(length(elementCountProb),1);
    for j = 1:length(elementCountProb)
        pFail{i}{j} = -999;
    end
end

for i = 1:numScenario    
    for j = 1:length(elementCountProb)
        for k = 1:elementCountProb(j)
            if dist(j) == 1
                pFail{i}{j}(k) = elementUnif{j}(k);
            elseif dist(j) == 2
                pFail{i}{j}(k) = (1/2)*(1 + erf((windSpeed(i) - elementMu{j}(k))/(sqrt(2*(elementSigma{j}(k))^2))));
            end
        end
    end
end