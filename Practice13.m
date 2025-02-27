P = 1000;
Gamma = 0.5;
n = [0:25];
weeks = 25;
S = zeros(1, weeks+1);
I = zeros(1, weeks+1);
R = zeros(1, weeks+1);
R(1) = 0;
I(1) = 3;
S(1) = P - I(1);
NC = 5;
Alpha = NC/(I(1)*S(1));
for i=1:weeks
  S(i+1) = S(i) - Alpha * S(i) * I(i);
  I(i+1) = I(i) - Gamma * I(i) + Alpha * S(i) * I(i);
  R(i+1) = R(i) + Gamma * I(i)
endfor
S;
I;
R;
disp([n', S', I' R']);
plot(n, S, 'b', n, I, 'r', n, R, 'g');
grid on
