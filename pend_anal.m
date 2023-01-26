function [dm] = pend_anal(t, m)

% Initializing state variables
dm = zeros(2, 1);

omegan = 5; % rad / sec\

% State space equation2
dm(1) = m(2);
dm(2) = -omegan^2 * m(1);

end