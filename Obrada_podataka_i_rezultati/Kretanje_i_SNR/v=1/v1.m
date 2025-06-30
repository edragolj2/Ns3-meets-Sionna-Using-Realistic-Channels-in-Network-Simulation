clear all;
close all;
clc;

% U?itaj koordinate iz datoteke
data = load('txid1_coordinates_emms_speed1_corrected.txt');  % Pretpostavlja se da se datoteka nalazi u trenutnom direktoriju

% Izdvoji X i Y koordinate
x = data(:,1);
y = data(:,2);

% Po?etna pozicija (Tx ?vor)
tx_x = 8.5;
tx_y = 21;

% Nacrtaj kretanje ta?ke
figure;

% Crvena zvjezdica za Tx
plot(tx_x, tx_y, 'r*', 'MarkerSize', 12, 'LineWidth', 2);
hold on;
plot(x, y, '-o', 'LineWidth', 1.5);
xlabel('X koordinata');
ylabel('Y koordinata');
xlim([-40 80]);   
ylim([0 170]); 
title('Kretanje tacke (v=1 m/s)');
grid on;
axis equal;  % Da se o?uva razmjera izme?u osi

% U?itaj podatke iz .txt fajla
data = load('timestamp_rxpower_emms_speed1.txt');

% Razdvoji kolone
time = data(:, 1);
snr = data(:, 2);

% Iscrtavanje grafa
figure;
plot(time, snr);
xlabel('Vrijeme [s]');
ylabel('SNR [dB]');
title('SNR u funkciji vremena (v=1 m/s)');
 
grid on;
