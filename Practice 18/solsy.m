weeks = 400;
F = zeros(1, weeks+1);
R = zeros(1, weeks+1);

F(1) = 110;
R(1) = 1000;

for i = 1:weeks
  F(i+1) = 0.88 * F(i) + 0.0001 * F(i) * R(i);
  R(i+1) = -0.0003 * R(i) * F(i) + 1.039 * R(i);
endfor
F;
R;

n = [0:weeks];

figure;
plot(n, F, n, R)

figure;
plot(F, R)





########## Model 08 ##########

#{
P = 1000;
Gamma = 0.5;
weeks = 25;
n = [0:weeks];
S = zeros(1, weeks+1);
I = zeros(1, weeks+1);
R = zeros(1, weeks+1);
R(1) = 0;
I(1) = 3;
S(1) = P - I(3);
NC = 5;
Alpha = NC/(S(1) * I(1));
for i = 1:weeks
  S(i + 1) = S(i) - Alpha * S(i) * I(i);
  I(i + 1) = I(i) + Alpha * S(i) * I(i) - Gamma * I(i);
  R(i + 1) = R(i) + Gamma * I(i);
endfor
S;
I;
R;
disp([n', S', I' R']);
plot(n, S, 'b', n, I, 'r', n, R, 'g')
grid on;
#}

########## Model 09 ##########

#{
close;
[t, y1] = F(100, 60)
[t, y2] = F(50, 60)
figure;
plot(t, y1, t, y2)
legend('y1', 'y2')
#}

########## Model 10 ##########

#{
function solsy(x10, x20)
  close;
  t0 = 0;
  tf = 300;
  trange = [t0:tf];
  [t, x] = ode45('F', trange, [x10, x20]);
  disp('time         X               Y');
  disp([t, x(:,1), x(:,2)]);
  figure;
  plot(t, x(:,1), t, x(:,2));
  figure;
  plot(x(:,1), x(:,2));
endfunction
#}
