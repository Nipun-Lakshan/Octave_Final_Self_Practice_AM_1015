# In Class Assignment I - Code

L = zeros(1, 401);
D = zeros(1, 401);

L(1) = 40;
D(1) = 350;

m = 1;

for i=1:400
  L(i+1) = 0.92 * L(i) + 0.0003 * D(i) * L(i);
  D(i+1) = -0.0006 * L(i) * D(i) + 1.048 * D(i);
endfor
L;
D;

L(301)
D(301)
disp('Population Over 20 Years : ')
L(241)

n = [0:400]

figure(1);
plot(n, L, '*b', n, D, '*g') # No Graph will Come to -m
plot(L, D, '*k')
