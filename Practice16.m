pn = [10.3 17.2 27 45.3 80.2 125.3 176.2 255.6]
dpn = zeros(1,7);
for i = 1:7;
  dpn(i) = pn(i+1) - pn(i);
endfor
dpn

new_pn = pn(1:7)

denom = sum(new_pn.^2)
numer = sum(new_pn.*dpn)

m = numer/denom

pn_predict = zeros(1, 21)
pn_predict(1) = 10.3
for i = 1:20;
  pn_predict (i+1) = (1+m) * pn_predict(i);
endfor
pn_predict


n = [0:7]; %first seven days
n_new = [0:20] % first 20days
plot(n,pn,'*r',n_new,pn_predict,'b+')
legend('data', 'predict')
