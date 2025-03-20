# Command to Clear Workspace
clear all

# Command to Clear Command History
history -c

# Command to Clear Command Window
clc

figure;
n = [0:19];
an = [10.3 17.2 27 45.3 80.2 125.3 176.2 255.6 330.8 390.4 440 520.4 560.4 600.5 610.8 614.5 618.3 619.5 620 621];
plot(n, an, 'r*');
xlabel('Hours');
ylabel('Population');
title('Bacteria Population');

dan = zeros(1,19);
for i=1:19
  dan(i) = an(i+1) - an(i);
endfor
dan

an_new = an(1:19);
X = (621 - an_new) .* an_new;
b = sum(X.*dan)/sum(X.*X)

pred = zeros(1,20); % 20 Values = 1 Initial Value + 19 Pred Values
pred(1) = 10.3

for i = 1:19
  pred(i+1) = pred(i)+b*(621-pred(i)) * pred(i);
endfor
pred

figure
plot(n, an, 'r*', n, pred, 'b*');
xlabel('Hours');
ylabel('Population');
title('Bacteria Population');
legend('Observed', 'Predicted', 'location', 'northwest')




























#{
interest_rate = 0.05;
withdraw = 2000;
years = 25;
a = zeros(1, years+1);
b = zeros(1, years+1);
c = zeros(1, years+1);
a(1) = 40000;
b(1) = 45000;
c(1) = 35000;
for i = 1:years
  a(i+1) = a(i) * (1 + interest_rate) - withdraw;
  b(i+1) = b(i) * (1 + interest_rate) - withdraw;
  c(i+1) = c(i) * (1 + interest_rate) - withdraw;
endfor
n = [0:years];
plot(n, a, n, b, n, c);
xlabel('Time (Years)');
ylabel('Account Balance');
title('Time vs Account Balance', 'FontSize', 20);
legend('Initial Deposit = $40000', 'Initial Deposit = $45000', 'Initial Deposit = $35000', 'Location', 'NorthWest');
grid on;
#}
#{
clc
years = 19;
n = [0:years];
a = [10.3, 17.2, 27, 45.3, 80.2, 125.3, 176.2, 255.6, 330.8, 390.4, 440, 520.4, 560.4, 600.5, 610.8, 614.5, 618.3, 619.5, 620, 621];
plot(n, a, 'r*');
xlabel('Hours');
ylabel('Population');
title('Bacteria Population');

#an+1 = an + b(621 - an)an

dan = zeros(1, years);
for i = 1:years
  dan(i+1) = a(i+1) - a(i);
endfor
dan;

a_new = a(1:years);
X = (621 - a_new).*a_new;
b = sum(X.*dan)/sum(X.*X);
a = b
#}








#{




an_new = an(1:19);
X = (621 - an_new) .* an_new;
b = sum(X.*dan)/sum(X.*X)

pred = zeros(1,20); % 20 Values = 1 Initial Value + 19 Pred Values
pred(1) = 10.3

for i = 1:19
  pred(i+1) = pred(i)+b*(621-pred(i)) * pred(i);
endfor
pred

figure
plot(n, an, 'r*', n, pred, 'b*');
xlabel('Hours');
ylabel('Population');
title('Bacteria Population');
legend('Observed', 'Predicted', 'location', 'northwest')
#}


























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
