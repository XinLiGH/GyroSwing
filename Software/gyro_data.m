clc;    %清空命令行窗口
clear;  %清空工作区

gyro_x = dlmread('X轴.dat');                      %从文本中读取陀螺仪数据，单位：deg/s，速率：200Hz
gyro_y = dlmread('Y轴.dat');
gyro_z = dlmread('Z轴.dat');

gyro_x_zero = mean(gyro_x(1:12000, 3));           %求陀螺仪零偏
gyro_y_zero = mean(gyro_y(1:12000, 4));
gyro_z_zero = mean(gyro_z(1:12000, 5));

gyro_x_minus_zero = gyro_x(:, 3) - gyro_x_zero;   %陀螺仪数据减去零偏
gyro_y_minus_zero = gyro_y(:, 4) - gyro_y_zero;
gyro_z_minus_zero = gyro_z(:, 5) - gyro_z_zero;

gyro_x_angle = cumsum(gyro_x_minus_zero) / 200;   %陀螺仪数据积分求角度
gyro_y_angle = cumsum(gyro_y_minus_zero) / 200;
gyro_z_angle = cumsum(gyro_z_minus_zero) / 200;

gyro_x_time = (1:length(gyro_x_angle)) / 200;     %求陀螺仪数据的时间
gyro_y_time = (1:length(gyro_y_angle)) / 200;
gyro_z_time = (1:length(gyro_z_angle)) / 200;

figure('name', '陀螺仪X轴数据积分角度'); %创建绘图窗口
plot(gyro_x_time, gyro_x_angle);        %绘图
xlabel('Time:sec');                     %添加X轴标签
ylabel('Angle:deg');                    %添加Y轴标签
grid on;                                %添加网格线

figure('name', '陀螺仪Y轴数据积分角度'); %创建绘图窗口
plot(gyro_y_time, gyro_y_angle);        %绘图
xlabel('Time:sec');                     %添加X轴标签
ylabel('Angle:deg');                    %添加Y轴标签
grid on;                                %添加网格线

figure('name', '陀螺仪Z轴数据积分角度'); %创建绘图窗口
plot(gyro_z_time, gyro_z_angle);        %绘图
xlabel('Time:sec');                     %添加X轴标签
ylabel('Angle:deg');                    %添加Y轴标签
grid on;                                %添加网格线
