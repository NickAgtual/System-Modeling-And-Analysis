% Creating time vector
time = 0:.01:15;

global l

% Solving ODE
% Each pair in input vecotr is the initial conditions
[T, Theta] = ode45(@pend_anal, time, [0 0 0 0]);

% Creating new figure
figure(1)

% Plotting
plot(T, Theta(:, 1))

% Creating new figure
figure(2)

% Plotting
plot(T, Theta(:, 2))

% Length of angles
lengthAngle = size(Theta, 1);

%% Animation

%
gamma = 0:.1: (2 * pi);

% Radius of circle at end of pendulum
radiusCircle = .5;

for ii = 1:lengthAngle
    
    % Linear pendulum particle coordinates
    xCircleL = (l * sin(Theta(ii, 1))) + (radiusCircle * cos(gamma));
    yCircleL = (-l * cos(Theta(ii, 1))) + (radiusCircle * sin(gamma));
    
    % Non-linear pendulum particles
    xCircleNL = (l * sin(Theta(ii, 3))) + (radiusCircle * cos(gamma));
    yCircleNL = (-l * cos(Theta(ii, 3))) + (radiusCircle * sin(gamma));
    
    % Non-Linear inverted pendulum particles
    xCircleInvNL = (l * sin(Theta(ii, 5))) + (radiusCircle * cos(gamma));
    yCircleInvNL = (l * cos(Theta(ii, 5))) + (radiusCircle * sin(gamma));
    
    % linear inverted penudlum particle
    xCircleInvL = (l * sin(Theta(ii, 7))) + (radiusCircle * cos(gamma));
    yCircleInvL = (l * cos(Theta(ii, 7))) + (radiusCircle * sin(gamma));
    
    % Creating new figure
    figure(3)
    
    % Plotting peundulum arm (linear)
    plot([0; l * sin(Theta(ii, 1))], [0; -l * cos(Theta(ii, 1))], 'b')
    
    hold on
    
    % Plotting pendulum arm (non-linear)
    plot([0; l * sin(Theta(ii, 3))], [0; -l * cos(Theta(ii, 3))], 'r')
    
    % Plotting inverted pendulum (Non-linear)
    plot([0; l * sin(Theta(ii, 5))], [0; l * cos(Theta(ii, 5))], 'g')
    
    % Plotting inverted pendulum (linear)
    plot([0; l * sin(Theta(ii, 7))], [0; l * cos(Theta(ii, 7))], 'k')
    
    % Plotting circle points (linear)
    fill(xCircleL, yCircleL, 'b')
    
    % Plotting circle points (non-linear)
    fill(xCircleNL, yCircleNL, 'r')
    
    % Plotting inverted pendulum circle (non-linear)
    fill(xCircleInvNL, yCircleInvNL, 'g')
    
    % Plotting inverted pendulum circle linear
    fill(xCircleInvL, yCircleInvL, 'k')
    
    % Plotting support
    fill([-1, 1, 1, -1], [-1, -1, 1, 1], 'k')
    
    hold off
    
    % Setting axis limits
    axis([-12 12 -12 12]);
    
    % Plot parameters
    grid on
    grid minor
    
    
end



