figure
n = [0:19];
an = [10.3 17.2 27 45.3 80.2 125.3 176.2 255.6 330.8 390.4 440 520.4 560.4 600.5 610.8 614.5 618.3 619.5 620 621];
plot(n, an, 'r*');
xlabel('Hours');
ylabel('Population');
title('Bacteria Population');

dan = zeros(1,19);
for i=1:19
  dan(i) = an(i+1) - an(i)
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

