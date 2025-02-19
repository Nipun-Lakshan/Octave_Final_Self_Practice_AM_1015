# Command to Clear Command History
history -c

# Command to Clear Workspace with all Variables and Loaded Packages
clear all

# Command to Clear Command Window
clc

function [t, p] = EGM(po, T)
  r = 0.0128;
  f = @(t, p) r * p;
  trange = [0:1:T];
  [t, p] = ode45(f, trange, po);
  disp([t p]);
  plot(t, p, '-o')
  xlabel('Time')
  ylabel('Population')
  title('Population vs Time')
endfunction

EGM(5.932, 502)
