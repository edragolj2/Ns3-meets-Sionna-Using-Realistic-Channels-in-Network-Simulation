clear all;
close all;
clc;

% U?itaj podatke iz txt fajla
data = readtable('output_txid1_data_emms.txt', 'Delimiter', ' ', 'ReadVariableNames', true);

% Ekstrahiraj koordinate
x = data.x;
y = data.y;

% Po?etna pozicija (Tx ?vor)
tx_x = 10;   % pomjereno lijevo kao na referentnoj slici
tx_y = 30;

% Crtanje putanje
figure;
plot(x, y, '-o', ...
    'Color', 'b', ...
    'LineWidth', 2.5, ...
    'MarkerSize', 3, ...
    'MarkerFaceColor', 'b', ...
    'MarkerEdgeColor', 'b');
hold on;

% Dodaj crvenu zvjezdicu (Tx pozicija)
plot(tx_x, tx_y, 'r*', 'MarkerSize', 14, 'LineWidth', 2);

% Oznake i izgled
xlabel('Xdim [m]');
ylabel('Ydim [m]');
title('Prikaz rezultata za pomjeranje mobilne tacke (outdoor)', 'FontWeight', 'bold');
    

% Granice i proporcije
xlim([0 100]);
ylim([0 200]);
axis equal;
grid on;
