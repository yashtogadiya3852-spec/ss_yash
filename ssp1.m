clc;
clear;
close all;

t = 0:0.01:2;
x = sin(2*pi*t);

figure;
plot(t, x);
xlabel('Time');
ylabel('Amplitude');
title('Continuous Time Sine Signal');
grid on;


n = 0:20;
x1 = sin(2*pi*n/10);


figure;
stem(n, x1);
xlabel('n');
ylabel('Amplitude');
title('Discrete Time Sine Signal');
grid on;