close all;
clear all;
clc
%% first curve
% Initialization 
x = -10:.1:10;
a = -10;
b = 10;
miu = 0;
sigma = 2;
% Formula 
norm = normpdf(x, miu, sigma);
Fnorma = (1/2) * (1 + erf((1/sigma)*(a-miu)/sqrt(2)));
Fnormb = (1/2) * (1 + erf((1/sigma)*(b-miu)/sqrt(2)));
y = (1/2) * norm / (Fnormb - Fnorma);
% Draw curve
figure('Position', [50,50,600,500], 'Name', 'Truncated Normal Dustribution',...
    'Color', [1,1,1]);
plot(x, y,'b--', 'LineWidth', 2)
% Setting 
set(gca, 'FontSize', 10, 'TickDir', 'out', 'TickLength', [0.01,0.01])
xlabel('x', 'FontSize', 15);ylabel('probability density', 'FontSize', 15)
hold on
%% second curve
miu1 = -8;
sigma1 = 2;

norm1 = normpdf(x, miu1, sigma1);
Fnorma1 = (1/2) * (1 + erf((1/sigma1)*(a-miu1)/sqrt(2)));
Fnormb1 = (1/2) * (1 + erf((1/sigma1)*(b-miu1)/sqrt(2)));
y1 = (1/2) * norm1 / (Fnormb1 - Fnorma1);

plot(x, y1,'k-', 'LineWidth', 2)
