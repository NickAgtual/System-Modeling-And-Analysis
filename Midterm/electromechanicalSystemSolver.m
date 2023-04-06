function electromechanicalSystemSolver()

%% Solving ODE

% Defining time vector
time = 0:.01:6500;

% Solving ODE using ode45
[T, alphas] = ode45(@electromechanicalODEs, time, [0 0 0]);

% Extracting constants in ODE fxn
[~, constants] = electromechanicalODEs(T, alphas);

%% Plotting Rotation Angle
% Creating new figure
figure(1)

% Plotting rotation angle vs. time
plot(T, alphas(:, 1), 'displayName', 'Roation Angle')

% Plot parameters
grid on
grid minor

% Plot descriptors
title('\emph{$\alpha$ vs. t}', 'fontsize', ...
    16, 'Interpreter', 'Latex')
xlabel('\emph{t [sec]}', 'fontsize', 14, 'Interpreter', 'Latex')
ylabel('\emph{$\alpha$}',...
    'fontsize', 14, 'Interpreter', 'Latex')
legend('location', 'northwest', 'Interpreter', 'Latex')

%% Plotting Actuator Current
% Creating new figure
figure(2)

% Plotting actuator current vs. time
plot(T, alphas(:, 3), 'displayName', 'Actuator Current')

% Plot parameters
grid on
grid minor

% Plot descriptors
% Plot descriptors
title('\emph{i vs. t}', 'fontsize', ...
    16, 'Interpreter', 'Latex')
xlabel('\emph{t [sec]}', 'fontsize', 14, 'Interpreter', 'Latex')
ylabel('\emph{i}',...
    'fontsize', 14, 'Interpreter', 'Latex')
legend('location', 'northwest', 'Interpreter', 'Latex')

end