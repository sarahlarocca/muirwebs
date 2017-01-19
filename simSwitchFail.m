function [switchFail] = simSwitchFail(pSwitchFail)

% Switch failure
% P(switch fail) = P(switch component fail)

if rand(1) <= pSwitchFail
    switchFail = 1;
else
    switchFail = 0;
end