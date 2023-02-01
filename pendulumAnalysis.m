function [dm, length] = pendulumAnalysis(t, m)

% Initializing state variables
dm = zeros(8, 1);

% Natural frequency (rad/sec)
omegan = 1;

% Gravity (m/s^2)
g = 9.81;

% Length of penudlum arm
% w = sqrt(g/l)
length = g / (omegan ^ 2);

%% Regular Pendulum State Space Equations

% Linear ODE
dm(1) = m(2);
dm(2) = -omegan^2 * m(1);

% Non-Linear ODE
dm(3) = m(4);
dm(4) = -omegan^2 * sin(m(1));

%% Inverted Pendulum State Space Eqautions

% Non-Linear ODE
dm(5) = m(6);
dm(6) = (g / length) * sin(m(5));

% Linear ODE
dm(7) = m(8);
dm(8) = g / length;

end