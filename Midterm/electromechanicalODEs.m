function [dm, constants] = electromechanicalODEs(t, m)

% Defining constant values
constants.a = 1;
constants.b = .54;
constants.c = 1;
constants.k = .07;
constants.d = [140 320 24 1000];

% Initializing state variables
dm = zeros(3, 1);

% State space equations
dm(1) = m(2);
dm(2) = (constants.k * m(3) + ((m(1)^(.3)) * exp(-.05 * (m(1) ^ .5))) - ...
    (constants.b * sin(m(2))) - (constants.c * tan(m(1)))) / constants.a;
dm(3) = ((m(2) * m(1) * m(3)) / (constants.d(1) + ...
    (constants.d(2) * m(1)))) + ((constants.d(3) - m(3)) / constants.d(4));

end