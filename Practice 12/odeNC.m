function [t, y] = odeNC(yo, T)
  k = -0.02877;
  f = @(t, y) k * (y - T);
  trange = [0:1:120];
  [t, y] = ode45(f, trange, yo)
  disp('time Temperature');
  disp([t, y]);
  plot(t, y);
endfunction
