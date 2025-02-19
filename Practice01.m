# Command to Clear Command Histroy
history -c

# Command to Clear All Variables and Packages
clear all

# Command to Clear Command Window
clc

# Initialize Variables
C = 40;
k = - 0.02877;
t = linspace(0, 120, 7201);
Y = zeros(1, 7201);
T = 60;
Y(1) = 100;

# Running  a Loop
for i=1:7200
  Y(i + 1) = T + C*exp(k*t(i));
endfor
Y;

# Plot the Graph
plot(t, Y)
title('Solution Curve')
xlabel('Time in Minutes')
ylabel('Temperature')
grid on;
