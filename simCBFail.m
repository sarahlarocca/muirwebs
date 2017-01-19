function [cbFail] = simCBFail(pCBFoundationFail, pCBShelterFail)

% Chlorine booster failure
% P(CB fail) = P(CB foundation fail OR CB shelter fail)

if rand(1) <= pCBFoundationFail
    cbFoundationFail = 1;
else
    cbFoundationFail = 0;
end

if rand(1) <= pCBShelterFail
    cbShelterFail = 1;
else
    cbShelterFail = 0;
end

if (cbFoundationFail | cbShelterFail) == 1
    cbFail = 1;
else
    cbFail = 0;
end
