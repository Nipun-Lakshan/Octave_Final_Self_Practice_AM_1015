close
[t, y1] = odeNC(100, 60);
[t, y2] = odeNC(50, 60);
figure;
plot(t, y1, t, y2);
legend('y1', 'y2');
