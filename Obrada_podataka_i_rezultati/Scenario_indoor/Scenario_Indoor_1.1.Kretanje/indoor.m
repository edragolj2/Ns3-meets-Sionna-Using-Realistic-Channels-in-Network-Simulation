clear all;
close all;
clc;

% U?itavanje podataka
data = load('txid_1_coordinates.txt');

% Razdvajanje X i Y koordinate
x = data(:,1);
y = data(:,2);

% Po?etna pozicija (Tx ?vor)
tx_x = 1;
tx_y = 2;

% Iscrtavanje
figure;

% Putanja
plot(x, y, '-o', ...
    'Color', [0 0.4470 0.7410], ...
    'LineWidth', 2, ...
    'MarkerSize', 3, ...
    'MarkerEdgeColor', [0 0.4470 0.7410]);
hold on;

% Crvena zvjezdica za Tx
plot(tx_x, tx_y, 'r*', 'MarkerSize', 12, 'LineWidth', 2);

% Zid sa otvorom izme?u y=1 i y=2 (otvorena vrata)
line([4 4], [0 1], 'Color', 'k', 'LineWidth', 2);    % donji dio zida
line([4 4], [2 6], 'Color', 'k', 'LineWidth', 2);    % gornji dio zida

% Podešavanja
title('Prikaz rezultata za pomjeranje mobilne tacke u prostoru', 'FontWeight', 'bold');
xlabel('Xdim [m]');
ylabel('Ydim [m]');
axis([0 8 0 6]);
axis square;
grid on;
