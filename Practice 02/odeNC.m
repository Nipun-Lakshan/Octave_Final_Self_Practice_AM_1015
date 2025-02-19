# Command to Clear Command History
history -c

# Command to Clear All Variables and Packages
clear all

# Command to Clear Command Window
clc

function [t, y] = odeNC(yo, T)
  k = -0.02877;
  f = @(t, y) k * (y - T);
  trange = [0:1:120];
  [t, y] = ode45(f, trange, yo);
  disp([t y]);
  # plot(t, y);
endfunction

#{
function [t, y] = odeNC(yo, T)
  k = -0.02877;
  f = @(t, y) k * (y - T);
  trange = [0:1:120];
  [t, y] = ode45(f, trange, yo)
  disp([t y])
  plot(t, y)
#}

