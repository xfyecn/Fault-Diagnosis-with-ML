clear;
N = 1024;
M = 100;
x = zeros(N, M);

load('data/external/CWRU/12k_drive_end_bearing_fault/IR021_2.mat');
for m=1:M
    head = N * (m - 1) + 1;
    tail = N * m;
    x(:, m) = X211_DE_time(head:tail, :);
end
clearvars -except x;

data_sink_path = 'data/interim/CWRU/c5_ir_fault_021.mat';
save(data_sink_path, 'x');