% Parameters
interest_rate = 1.05;
withdraw = 2000;
years = 25;

% Initial Populations
a0_values = [40000, 45000, 35000];
colours = ["b", "g", "r"];
hold on
for i = 1:length(a0_values)
  a = zeros(1, years + 1); % Initialize Array for Population
  a(1) = a0_values(i); % Set Initial Population
  for n = 1:years
    a(n+1) = interest_rate * a(n) - withdraw; % Update Population
  end
  plot(0:years, a, colours(i)); % Plot population
end
xlabel("Years")
ylabel("Money in the account")
legend("a0=40000", "a0=45000", "a0=35000")
hold off

