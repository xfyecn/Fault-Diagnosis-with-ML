clear;
N = 1024;
M = 80;
x = zeros(N, M);

load('data/external/CWRU/12k_drive_end_bearing_fault/OR014@6_1.mat');
for m=1:M
    head = N * (m - 1) + 1;
    tail = N * m;
    x(:, m) = X198_DE_time(head:tail, :);
end
clearvars -except x;

data_sink_path = 'data/interim/CWRU/or_faults_014.mat';
save(data_sink_path, 'x');