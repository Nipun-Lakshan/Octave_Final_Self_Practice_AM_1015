# Command to Clear Command Window
clc

function Solsy(x10, x20)
  close;
  t0 = 0;
  tf = 200;
  trange = [t0:tf];
  [t, x] = ode45('F', trange, [x10, x20]);
  disp('Time              Rabbits                  Foxes');
  disp([t,                x(:,1)                   x(:,2)]);
  figure;
  plot(t, x(:,1), t, x(:,2))
  xlabel('Time', 'FontSize', 15);
  ylabel('Population', 'FontSize', 15);
  title('Rabbit vs Fox Population Over Time', 'FontSize', 20);
  legend('Rabbit', 'Foxes');
  grid on;
  figure;
  plot(x(:,1), x(:,2));
  title('Rabbit vs Fox Trajectory', 'FontSize', 20);
  xlabel('Rabbits Population', 'FontSize', 15);
  ylabel('Foxes Population', 'FontSize', 15);
  grid on;
endfunction

# Solsy(1000, 100)
# Solsy(500, 50)
Solsy(2000, 200)
