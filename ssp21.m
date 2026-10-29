clc;
clear;
close all;

n = -10:10;

y1 = (n == 0);


y2 = (n >= 0);


y3 = n .* (n >= 0);


y4 = sign(n);


figure;
stem(n, y1);
xlabel('n');
ylabel('Amplitude');
title('Unit Impulse Signal');
grid on;


figure;
stem(n, y2, 'filled');
xlabel('n');
ylabel('Amplitude');
title('Unit Step Signal');
grid on;


figure;
stem(n, y3, 'filled');
xlabel('n');
ylabel('Amplitude');
title('Unit Ramp Signal');
grid on;


figure;
stem(n, y4, 'filled');
xlabel('n');
ylabel('Amplitude');
title('Signum Signal');
grid on;

%Time Shifting

t = -5:0.01:5;
y5 = sin(2*pi*t-3*pi/2);

figure;
plot(t, y5);
xlabel('Time');
ylabel('Amplitude');
title('Continuous Time Sine Signal dilay with 3/2*pi');
grid on;



n = -10:10;
y6 = (n >= 0);

y6 = ((n-3) >= 0);

figure;
stem(n, y6 );
title('Delayed Signal by 3');
grid on;

% time reversal

y7 = ((-n) >= 0);

figure;
stem(n, y7);
xlabel('n');
ylabel('Amplitude');
title('Time Reversed of unit step signal');
grid on;

%time scaling
figure;
y8= 3*n.*(3*n>=0);
stem(n, y8);
xlabel('n');
ylabel('Amplitude');
title('Time Scaled Signal');
grid on;

