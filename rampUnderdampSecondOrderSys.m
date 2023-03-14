clc; clear; close all

zeta1 = .05; % Very low damping
zeta2 = .3; 

omegan = 7; % rad/s

num = [0 0 0 omegan ^ 2];
den1 = [1 2 * zeta1 * omegan omegan ^ 2 0];
den2 = [1 2 * zeta2 * omegan omegan ^ 2 0];

time = 0:.01:15;

input = time; %ramp

figure(1)
step(num, den1, time)
hold on
step(num, den2, time)
plot(time, input, 'r')
grid on
grid minor