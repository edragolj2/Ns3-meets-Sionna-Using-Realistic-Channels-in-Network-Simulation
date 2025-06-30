% U?itaj podatke iz txt fajla
data = readtable('output_txid1_data.txt', 'Delimiter', ' ', 'ReadVariableNames', true);

% Ekstrahiraj kolone
distance = data.distance;
rxPower = data.rxPower;

% Napravi scatter efekat koriste?i plot sa providnim markerima
figure;
h = plot(distance, rxPower, 'o', ...
    'MarkerEdgeColor', 'none', ...
    'MarkerFaceColor', [1 0 0], ...
    'MarkerSize', 6);  % pove?aj ako želiš ve?e kruži?e
hold on;

% Dodaj crtu na -100 dBm
plot([min(distance), 10], [-100, -100], 'k--', 'LineWidth', 2);

% Oznake i naslov
xlabel('Distance [m]');
ylabel('Mean R_x power [dBm]');
title('Prikaz rezultata za snagu R_x srednje u odnosu na udaljenost', 'FontWeight', 'bold');

% Osa, mreža
xlim([0 10]);
ylim([-110 0]);
grid on;

