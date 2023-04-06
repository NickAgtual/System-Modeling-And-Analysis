%% Question 1

% Defining time vector
time = 0:.01:6500;

% Solving ODE using ode45
[T, m] = ode45(@electromechanicalODEs, time, [0 0 0]);

% Extracting constants in ODE fxn
[~, constants] = electromechanicalODEs(T, m);

% Creating new figure
figure(1)

% Plotting rotation angle vs. time
plot(T, m(:, 1) * (180 / pi), 'displayName', 'Roation Angle')

% Plot parameters
grid on
grid minor
ylim([0 76]);

% Plot descriptors
title('\emph{$\alpha$ vs. t}', 'fontsize', ...
    16, 'Interpreter', 'Latex')
xlabel('\emph{t [sec]}', 'fontsize', 14, 'Interpreter', 'Latex')
ylabel('\emph{$\alpha$ [deg]}',...
    'fontsize', 14, 'Interpreter', 'Latex')
legend('location', 'northwest', 'Interpreter', 'Latex')

% Creating new figure
figure(2)

% Plotting actuator current vs. time
plot(T, m(:, 3), 'displayName', 'Actuator Current')

% Plot parameters
grid on
grid minor

% Plot descriptors
title('\emph{i vs. t}', 'fontsize', ...
    16, 'Interpreter', 'Latex')
xlabel('\emph{t [sec]}', 'fontsize', 14, 'Interpreter', 'Latex')
ylabel('\emph{i [Amperes]}',...
    'fontsize', 14, 'Interpreter', 'Latex')
legend('location', 'northwest', 'Interpreter', 'Latex')

%% Question 2

% Definign symbolic variables
syms ii a

% Equillibrium equation #1
eqEqn1 = 0 == (constants.k * ii) + ...
    ((a ^ .3) * exp(-.05 * (a ^ .5)));

% Equillibrium equation #2
eqEqn2 = 0 == (d3 - ii) / d4;

% Solving system of equations
[A, B] = equationsToMatrix([eqEqn1, eqEqn2], [ii, a]);
[ii, a] = linsolve(A, B)
