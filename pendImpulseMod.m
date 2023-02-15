function [dm] = pendImpulseMod(t, m)

global l

% Initializing state variables
dm = zeros(8, 1);

omegan = 1; % rad / sec

g = 9.81;

l = g / (omegan ^ 2);

%% Regular Pendulum State Space Equations

% State space equations (linear ODE)
dm(1) = m(2);
dm(2) = -omegan^2 * m(1); % Without impulse as input

% Defining impulse
if t <= .01
    
    U = 20; % Nm
    
else
    
    U = 0; % Nm
    
end

% State space equations (non-linear ODE)
dm(3) = m(4);
dm(4) = -omegan^2 * sin(m(1)) + U; % With impulse as input

end
