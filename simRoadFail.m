function [roadFail] = simRoadFail(pRoadFail)

% Rpad failure
% P(road fail)

if rand(1) <= pRoadFail
    roadFail = 1;
else
    roadFail = 0;
end
