function [dm] = pend_anal(t, m)

global l

% Initializing state variables
dm = zeros(8, 1);

omegan = 1; % rad / sec

g = 9.81;

l = g / (omegan ^ 2);

%% Regular Pendulum State Space Equations

% State space equations (linear ODE)
dm(1) = m(2);
dm(2) = -omegan^2 * m(1);

% State space equations (non-linear ODE)
dm(3) = m(4);
dm(4) = -omegan^2 * sin(m(1));

%% Inverted Pendulum State Space Eqautions

% Non-linear
dm(5) = m(6);
dm(6) = (g / l) * sin(m(5));

dm(7) = m(8);
dm(8) = g / l;

end