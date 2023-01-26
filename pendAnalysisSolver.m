time = 0:.01:10; 

% Solving ODE
[T, Theta] = ode45(@pend_anal, time, [pi/4 0]);

% Creating new figure
figure(1)

% Plotting
plot(T, Theta(:, 1))