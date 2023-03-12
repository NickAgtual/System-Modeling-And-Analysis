clc; clear; close all;

omegan = 5;
zeta = .1;
zeta2 = .5; % more damping

% Impulse
num1 = [0 (omegan ^ 2) 0];

% Step
num2 = [ 0 0 (omegan ^ 2)];

den = [1 (2 * zeta * omegan) (omegan ^ 2)];
den2 = [1 (2 * zeta2 * omegan) (omegan ^ 2)];

% Overshoot
MP = exp(-zeta * pi / (sqrt(1 - zeta ^ 2)));

% Peak time
tp = pi / (omegan * sqrt(1 - zeta ^ 2));

% Settling time (5%)
ts = 4 / (zeta * omegan);

figure(1)
step(num1, den);
hold on
step(num1, den2);
grid on
grid minor
title('Impulse Respnse');

figure(2)
step(num2, den);
hold on
step(num2, den2)
grid on
grid minor