# Command to Close All Graphs Which is Previously Opened
close
[t, y1] = odeNC(100,60)
figure;
plot(t, y1)

[t, y2] = odeNC(50,60)
figure;
plot(t, y2)
