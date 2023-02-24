clear; close all; clc

tau1 = 2;
tau2 = 5;

num = [0 0 1];
den1 = [tau1 1 0];
den2 = [tau2 1 0];

% Defining time
time = 0:.01:20;

y = time; % Ramp input

figure(1)
step(num, den1, time)
hold on
plot(time, y, 'r')
step(num, den2, time)
grid on
grid minor

legend('Response for \tau = 2', 'Input Voltage', ...
    'Response for \tau = 5')
title('Ramp 1st Order')



