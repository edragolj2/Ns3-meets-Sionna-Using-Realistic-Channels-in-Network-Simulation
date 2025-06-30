% -------------------------------
% PODACI ZA OBA GRAFIKONA
% -------------------------------

% Stanice
stations1 = [1 2 4 8 16 32];
stations2 = [1 2 4 8];
stations_ns3 = [1 2 4 8 16 32 64];

% Vrijeme simulacije (s)
time_ht_hm = [1073.19 3396.12 6379.69 12424];                     % Ns3Sionna (hT/hM)
time_it_im = [202.07 407.10 445.59 557.71 868.61 1635.74];        % Ns3Sionna (IT/IM)
time_ht_zm = [4.34 9.46 17.54 30.33 55.47 123.51];                % Ns3Sionna (hT/zM)

time_ns3_ht_hm = [0.1815 0.362501 0.933267 2.75685 7.59414 26.417 106.204];
time_ns3_ht_zm = [0.184638 0.363637 0.928327 2.15987 6.77118 28.6269 110.232];
time_ns3_it_zm = [0.0301096 0.0437423 0.0796382 0.166621 0.431623 1.29691 3.73634];

% Cache Hit Ratio (samo za Sionna)
cache_stationary = [0.999657 0.999849 0.999919 0.999958 0.99998 0.999991];
cache_lowmob = [0.817164 0.850829 0.934237 0.974351 0.988176 0.994554];
cache_highmob = [0.912835 0.929248 0.962057 0.979833];

% -------------------------------
% GRAFIK 1: Vrijeme simulacije (log-log)
% -------------------------------

figure;

loglog(stations2, time_ht_hm, '-*', 'LineWidth', 2, 'MarkerSize', 8, 'DisplayName', 'Ns3Sionna (hT/hM)');
hold on;
loglog(stations1, time_it_im, '-o', 'LineWidth', 2, 'MarkerSize', 8, 'DisplayName', 'Ns3Sionna (IT/IM)');
loglog(stations1, time_ht_zm, '-s', 'LineWidth', 2, 'MarkerSize', 8, 'DisplayName', 'Ns3Sionna (hT/zM)');

loglog(stations_ns3, time_ns3_ht_hm, '--^', 'LineWidth', 2, 'MarkerSize', 8, 'DisplayName', 'Ns3 (hT/hM)');
loglog(stations_ns3, time_ns3_ht_zm, '--d', 'LineWidth', 2, 'MarkerSize', 8, 'DisplayName', 'Ns3 (hT/zM)');
loglog(stations_ns3, time_ns3_it_zm, '--v', 'LineWidth', 2, 'MarkerSize', 8, 'DisplayName', 'Ns3 (IT/zM)');

xlabel('No. STAs');
ylabel('Execution time [s]');
title('Trajanje simulacije u zavisnosti od broja STA uredjaja');
set(gca, 'XTick', [1 2 4 8 16 32 64]);
set(gca, 'XTickLabel', {'1','2','4','8','16','32','64'});
xlim([1 64]);
grid on;
legend('Location', 'northwest');

% -------------------------------
% GRAFIK 2: Cache Hit Ratio
% -------------------------------

figure;

plot(stations1, cache_stationary, '-o', 'LineWidth', 2, 'MarkerSize', 8, 'DisplayName', 'Sionna - stationary');
hold on;
plot(stations1, cache_lowmob, '-s', 'LineWidth', 2, 'MarkerSize', 8, 'DisplayName', 'Sionna - low mobility');
plot(stations2, cache_highmob, '-^', 'LineWidth', 2, 'MarkerSize', 8, 'DisplayName', 'Sionna - high mobility');

xlabel('Broj stanica');
ylabel('Cache Hit Ratio');
title('Cache Hit Ratio u ovisnosti o broju stanica (Sionna)');
legend('Location','southeast');
grid on;
xlim([1 32]);
set(gca, 'XTick', [1 2 4 8 16 32]);
