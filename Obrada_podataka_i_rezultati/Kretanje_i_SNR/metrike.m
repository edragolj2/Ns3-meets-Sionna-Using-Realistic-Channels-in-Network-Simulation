clear all;
close all;
clc;

% U?itaj podatke
snr1 = load('timestamp_rxpower_emms_speed1.txt');
snr7 = load('snr_time_7.0.txt');
snr12 = load('timestamp_rxpower_emms_speed12.txt');

% Samo snr kolona
s1 = snr1(:,2);
s7 = snr7(:,2);
s12 = snr12(:,2);

% Prosjek
mean1 = mean(s1);
mean7 = mean(s7);
mean12 = mean(s12);

% Standardna devijacija
std1 = std(s1);
std7 = std(s7);
std12 = std(s12);

% Ispod praga
T = -70;
belowT1 = sum(s1 < T) / length(s1) * 100;
belowT7 = sum(s7 < T) / length(s7) * 100;
belowT12 = sum(s12 < T) / length(s12) * 100;

% Prikaz rezultata
fprintf('Brzina 1 m/s: Srednji SNR = %.2f, Std = %.2f, Ispod %.0f dB = %.2f%%\n', mean1, std1, T, belowT1);
fprintf('Brzina 7 m/s: Srednji SNR = %.2f, Std = %.2f, Ispod %.0f dB = %.2f%%\n', mean7, std7, T, belowT7);
fprintf('Brzina 12 m/s: Srednji SNR = %.2f, Std = %.2f, Ispod %.0f dB = %.2f%%\n', mean12, std12, T, belowT12);
