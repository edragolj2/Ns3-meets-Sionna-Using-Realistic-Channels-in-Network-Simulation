clear all; 
close all;
clc;

% U?itaj podatke (samo dst_x i dst_y iz prethodnog izvezenog fajla)
data = readtable('destination_coordinates.txt', 'Delimiter', '\t');

% Ekstrahiraj koordinate
x = data.dst_x;
y = data.dst_y;

% Iscrtavanje putanje
figure;
plot(x, y, 'bo-', 'MarkerSize', 3);
hold on;

% Zvjezdica na fiksnoj lokaciji (npr. referentna ta?ka)
plot(1, 2, 'r*', 'MarkerSize', 12, 'LineWidth', 1.5);


% Zid sa otvorom izme?u y=1 i y=2 (otvorena vrata)
line([4 4], [0 1], 'Color', 'k', 'LineWidth', 2);    % donji dio zida
line([4 4], [2 6], 'Color', 'k', 'LineWidth', 2);    % gornji dio zida

% Postavljanje granica i osi
xlim([0 8]);
ylim([0 6]);
title('Prikaz rezultata za pomjeranje mobilne tacke u prostoru / (od 50 do 150 sekundi)', 'FontWeight', 'bold');
xlabel('Xdim [m]');
ylabel('Ydim [m]');
grid on;
axis square;
