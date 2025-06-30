clear all;
close all;
clc;

% Po?etna pozicija (Tx ?vor)
tx_x = 1;
tx_y = 2;

% U?itavanje podataka iz oba fajla
data1 = load('txid1_coordinates.txt');
data2 = load('txid1_coordinates_100_200.txt');

x1 = data1(:,1);
y1 = data1(:,2);

x2 = data2(:,1);
y2 = data2(:,2);

% Iscrtavanje jedinstvenog grafa
figure;

% Definiši zajedni?ku boju
lineColor = [0 0.4470 0.7410];

% Prva putanja (0–100 s)
plot(x1, y1, '-o', ...
    'Color', lineColor, ...
    'LineWidth', 2, ...
    'MarkerSize', 3, ...
    'MarkerEdgeColor', lineColor);
hold on;

% Druga putanja (100–200 s)
plot(x2, y2, '-o', ...
    'Color', lineColor, ...
    'LineWidth', 2, ...
    'MarkerSize', 3, ...
    'MarkerEdgeColor', lineColor);

% Crvena zvjezdica za Tx
plot(tx_x, tx_y, 'r*', 'MarkerSize', 12, 'LineWidth', 2);

% Zid sa dva otvora (praznine izme?u 1-2 i 4-5)
line([4 4], [0 1], 'Color', 'k', 'LineWidth', 2);    % donji dio zida
line([4 4], [2 4], 'Color', 'k', 'LineWidth', 2);    % srednji dio zida
line([4 4], [5 6], 'Color', 'k', 'LineWidth', 2);    % gornji dio zida

% Pravougaonik (okvir prostora)
rectangle('Position', [0, 0, 8, 6], 'EdgeColor', 'k', 'LineWidth', 1.5);

% Podešavanja
title('Kretanje mobilne tacke u prostoru (0–200s)', 'FontWeight', 'bold');
xlabel('Xdim [m]');
ylabel('Ydim [m]');
axis square;
xlim([-15 35]);
ylim([-5 35]);
grid on;
