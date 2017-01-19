function [pipeFail] = simPipeFail(pPipeFail)

% Pipe failure
% P(pipe fail) = P(pipe component fail)

if rand(1) <= pPipeFail
    pipeFail = 1;
else
    pipeFail = 0;
end