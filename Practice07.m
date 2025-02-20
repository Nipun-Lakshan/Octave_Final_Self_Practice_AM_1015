# Command to Clear Command History
history -c

# Command to Clear Workspace with all Variables and Loaded Packages
clear all

# Command to Clear Command Window
clc

######################################
### Question 01 - Part a to Part e ###
######################################

# Define Parameters
N = 1000;              % Size of Population
Alpha = (4/(3 * 997)); % Approximately 0.001 (Infection Rate)
Gamma = 0.5;           % Removal Rate

# Variable Declarations
weeks = 25;            % Total Period Of Time
S = zeros(1, weeks+1); % Susceptible Population
I = zeros(1, weeks+1); % Infected Population
R = zeros(1, weeks+1); % Removed Population

# Initial values
S(1) = 997; % Suspectible Count
I(1) = 3;   % Infected Count
R(1) = 0;   % Removed Count

# SIR Model Loop To Calculate Values For 30 Weeks
for n = 1:weeks
    S(n+1) = S(n) - (Alpha * S(n) * I(n));
    I(n+1) = I(n) + (Alpha * S(n) * I(n)) - (Gamma * I(n));
    R(n+1) = R(n) + (Gamma * I(n));
end
S;
I;
R;

# Plotting the Results
n = 0:weeks; % Weeks Array For Plot X Axis
figure(1);
hold on;
plot(n, S, '-b');
plot(n, I, '-r');
plot(n, R, '-g');
title('SIR Model over 25 Weeks');
xlabel('Weeks');
ylabel('Population');
legend('Susceptible (S)', 'Infected (I)', 'Removed (R)', 'Location', 'east');
grid on;
hold off;

# Find Some Values From The Graph
I(11) % Max Infected Population
S(31) % Count Of Students Which are not infected the Virus After 30 Weeks
