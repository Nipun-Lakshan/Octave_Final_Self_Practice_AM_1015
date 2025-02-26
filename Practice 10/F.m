function xp = F(t, x)
  xp = zeros(2, 1);
  xp(1) = 0.2 * x(1) - 0.005 * x(1) * x(2);
  xp(2) = -0.5 * x(2) + 0.01 * x(1) * x(2);
endfunction


