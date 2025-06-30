clear all;
close all;
clc;

% U?itaj podatke iz txt fajla
data = readtable('output_txid1_data_emms.txt', 'Delimiter', ' ', 'ReadVariableNames', true);

% Ekstrahiraj kolone
distance = data.distance;
rxPower = data.rxPower;

% Prikaži scatter plot sa crvenim providnim ta?kama
figure;
scatter(distance, rxPower, 50, 'r', 'filled');  % 50 = veli?ina ta?ke
hold on;

% Dodaj isprekidanu liniju na -95 dBm
plot([0, max(distance)], [-95 -95], 'k--', 'LineWidth', 3);
% Oznake i izgled
xlabel('Distance [m]');
ylabel('Mean Rx power [dBm]');
title('Prikaz rezultata za snagu R_x srednje u odnosu na udaljenost', 'FontWeight', 'bold');

% Podešavanje osa i mreže
xlim([0 160]);
ylim([-100 -60]);
grid on;
