clear; clc; close all

num = [0 0 0 1];
den = [2 1 0 0];

t = 0:.01:15;

% Input to system
y = .5 * (t .^2);

figure(1)
step(num, den, t)
plot(t, y)
legend('Output', 'Input')
grid on 
grid minor