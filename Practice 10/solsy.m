function solsy(x10, x20)
  close;
  t0 = 0;
  tf = 300;
  trange = [t0:tf];
  [t, x] = ode45('F', trange, [x10, x20]);
  disp('Time              X                 Y');
  disp([t, x(:,1), x(:,2)]);
  figure;
  plot(t, x(:,1), t, x(:,2));
  figure;
  plot(x(:,1), x(:,2));
endfunction
