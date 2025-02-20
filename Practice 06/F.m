function xp = F(t, x)
  a = 0.04;
  b = 0.0003;
  c = 0.0001;
  d = 0.08;

  xp = zeros(2, 1);
  xp(1) = a * x(1) - b * x(2) * x(1);
  xp(2) = -d * x(2) + c * x(2) * x(1);
endfunction
