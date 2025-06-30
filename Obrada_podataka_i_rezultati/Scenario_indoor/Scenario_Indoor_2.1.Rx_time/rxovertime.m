% Load data from the file
data = readtable('timestamp_rx_power_fileA.txt', 'Delimiter', '\t');

% Extract original time and rxPower
time_original = data.timestamp;
rxPower = data.rx_power;

% Re-map time from [70, 100] to [0, 30]
time_mapped = (time_original - 70) * (30 / (100 - 70));

% Plotting
figure;
plot(time_mapped, rxPower, 'b', 'LineWidth', 1.5);
hold on;

% Dashed line at -100 dBm
plot([0 30], [-100 -100], 'k--', 'LineWidth', 2);

% Labels and axis
xlabel('Time [s]');
ylabel('Mean R_x power [dBm]');
title('Prikaz rezultata za snagu R_xsrednje', 'FontWeight', 'bold');
grid on;
xlim([0 30]);
ylim([-110 0]);
