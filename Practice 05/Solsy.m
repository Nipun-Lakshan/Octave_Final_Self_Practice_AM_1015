# Command To Clear Command Window
clc

#{
function [t, x] = Solsy(x10, x20)
  close;
  t0 = 0;
  tf = 300;
  trange = [t0:tf];
  [t, x] = ode45('F', trange, [x10, x20]);
  disp('time x y');
  disp([t, x]);
  figure;
  plot(t, x(:,1), t, x(:,2));
  figure;
  plot(x(:,1), x(:,2));
endfunction
#}

function Solsy(x10, x20)
  close;
  t0 = 0;
  tf = 300;
  trange = [t0:tf];
  [t, x] = ode45('F', trange, [x10, x20]);
  disp('time x y');
  disp([t, x]);
  figure;
  plot(t, x(:,1), t, x(:,2));
  figure;
  plot(x(:,1), x(:,2));
endfunction

Solsy(50, 40)


