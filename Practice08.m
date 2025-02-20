clc
clear all

F = zeros(1, 26);
W = zeros(1, 26);

F(1) = 300;
W(1) = 400;

for i = 1:25
 F(i + 1) = 1.2 * F(i) - 0.001 * F(i) * W(i);
 W(i + 1) = 1.3 * W(i) - 0.002 * F(i) * W(i);
endfor

n = [0:25];

figure(1);
plot(n, F, '*r', n, W, '*b');
title('Fox & WolF Population Over 25 Months');
xlabel('Month');
ylabel('Population');
legend('Fox', 'WolF', 'Location', 'northwest');

figure(2);
plot(F,W,'*k');
xlabel('Fox Population');
ylabel('Wolf Population');
title('Trajectory');
