# Command to Clear Command History
history -c

# Command to Clear Workspace with all Variables and Loaded Packages
clear all

# Command to Clear Command Window
clc

function [t, p] = LGM(po, T)
  r = 0.025;
  K = 12.5;
  f = @(t, p) r * p * (1 - (p / K));
  trange = [0:1:T];
  [t, p] = ode45(f, trange, po);
  #disp([t p]);
endfunction

[t, p1] = LGM(5.932, 300);
[t, p2] = LGM(4.932, 300);
[t, p3] = LGM(6.932, 300);
[t, p4] = LGM(10.932, 300);
[t, p5] = LGM(8.932, 300);
[t, p6] = LGM(0, 300);
#[t, p7] = LGM(5.932, 502);
#disp([t, p7]);

figure();
plot(t, p1, t, p2, t, p3, t, p4, t, p5, t, p6);
legend('Initial Value = 5.932', 'Initial Value = 4.932', 'Initial Value = 6.932', 'Initial Value = 10.932', 'Initial Value = 8.932', 'Initial Value = 0', 'Location', 'SouthEast');
title('Population with Different Initial Values', 'FontSize', 20);
xlabel('Time', 'FontSize', 15);
ylabel('Population', 'FontSize', 15);
grid on;
