########## Model 09 ##########

#{
function [t, y] = F(yo, T)
  k = -0.02877;
  f = @(t, y) k * (y - T);
  trange = [0:1:120];
  [t, y] = ode45(f, trange, yo);
  disp([t, y]);
  plot(t, y);
endfunction
#}

########## Model 10 ##########

#{
function xp = F(t, x)
  xp = zeros(2, 1);
  xp(1) = 0.2*x(1) - 0.05 * x(1) * x(2);
  xp(2) = -0.05*x(2) + 0.01*x(1)*x(2);
endfunction
#}

