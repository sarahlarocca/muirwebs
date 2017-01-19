function [lineFail] = simLineFail(pLineFail)

% Line failure
% P(line fail) = P(line component fail)

if rand(1) <= pLineFail
    lineFail = 1;
else
    lineFail = 0;
end
