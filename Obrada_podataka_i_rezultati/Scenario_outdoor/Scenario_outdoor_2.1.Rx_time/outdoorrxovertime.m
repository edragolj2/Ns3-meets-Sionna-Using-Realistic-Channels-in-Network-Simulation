clear all;
close all;
clc;

% U?itaj podatke iz txt fajla
data = readtable('output_txid1_data_emms.txt', 'Delimiter', ' ', 'ReadVariableNames', true);

% Ekstrahiraj kolone
timestamp = data.timestamp;
rxPower = data.rxPower;

% Napravi linijski graf
figure;
plot(timestamp, rxPower, 'b', 'LineWidth', 2);  % Plava linija, deblja
hold on;

% Crna isprekidana linija na -95 dBm
plot([0, max(timestamp)], [-95 -95], 'k--', 'LineWidth', 3);

% Oznake i izgled
xlabel('Time [s]');
ylabel('Mean Rx power [dBm]');
title('Prikaz rezultata za snagu R_x srednje u odnosu na vrijeme', 'FontWeight', 'bold');

% Ose i mreža
xlim([0 70]);
ylim([-100 -60]);
grid on;
