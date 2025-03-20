clear all
history -c
clc

weeks = 25;
gamma = 0.5;
population = 1000;
NC = 5;
n = [0:weeks];

S = zeros(1, weeks+1);
I = zeros(1, weeks+1);
R = zeros(1, weeks+1);

R(1) = 0;
I(1) = 3;
S(1) = population - I(1);

alpha = NC/(S(1) * I(1));

for i = 1:weeks
  S(i+1) = S(i) - alpha * S(i) * I(i);
  I(i+1) = I(i) + alpha * S(i) * I(i) - gamma * I(i);
  R(i+1) = R(i) + gamma * I(i);
endfor
S;
I;
R;

figure;
plot(n, S, n, I, n, R);
xlabel('Time in Weeks');
ylabel('Population');
title('SIR Model', 'FontSize', 20);
grid on;
legend('S (Susceptible)', 'I (Infected)', 'R (Removed)', 'Location', 'East');
xticks([0:1:25]);
