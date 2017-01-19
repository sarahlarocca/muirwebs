function [valveFail] = simValveFail(pValveFail)

% Valve failure
% P(valve fail) = P(valve component fail)

if rand(1) <= pValveFail
    valveFail = 1;
else
    valveFail = 0;
end

