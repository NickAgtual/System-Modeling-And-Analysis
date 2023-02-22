clear; close all; clc

tau1 = 2;
tau2 = 5;

num = [0 1];
den1 = [tau1 1];
den2 = [tau2 1];

% Defining time
time = 0:.01:70;

figure(1)
step(num, den1, time)
hold on
step(num, den2, time)

legend('\tau1', '\tau2')


numNew = [1 0];
figure(2)
step(numNew, den1)
hold on
step(numNew, den2)
grid on
grid minor
legend('\tau1', '\tau2')

