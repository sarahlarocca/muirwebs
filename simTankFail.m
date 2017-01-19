function [tankFail] = simTankFail(pTankFail)

% Tank failure
% P(tank fail) = P(tank foundation fail)

if rand(1) <= pTankFail
    tankFail = 1;
else
    tankFail = 0;
end