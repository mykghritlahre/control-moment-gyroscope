% Full path to the file in the Downloads directory
file_path = 'D:\(1) IITB Acads\sem6\ae427(matlab)\gyroscope\Sys_Iden.txt';

% Read the matrix data
data_matrix = readmatrix(file_path);

% Extract columns
time = data_matrix(:, 2);
commanded1_pos = data_matrix(:, 3);
commanded2_pos = data_matrix(:, 4);
encoder1_pos = data_matrix(:, 5);
encoder2_pos = data_matrix(:, 6);
encoder3_pos = data_matrix(:, 7);
encoder4_pos = data_matrix(:, 8);
control_effort1 = data_matrix(:, 9);
control_effort2 = data_matrix(:, 10);

% Plot the data
figure;
plot(time, commanded1_pos, '-', 'DisplayName', 'Commanded 1 Pos');
hold on;
plot(time, encoder1_pos, '-', 'DisplayName', 'Encoder 1 Pos');
plot(time, encoder2_pos, '-', 'DisplayName', 'Encoder 2 Pos');
plot(time, encoder3_pos, '-', 'DisplayName', 'Encoder 3 Pos');
plot(time, encoder4_pos, '-', 'DisplayName', 'Encoder 4 Pos');

xlabel('Time');
ylabel('Position');
title('Sys_Iden');
legend('show');


