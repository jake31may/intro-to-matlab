x = -3:0.01:3;
y = 4*x.^2 - x -5;

plot(x,y,'g-.',LineWidth=2)
xline(0,'k')
yline(0,'k')
grid on
xlabel('$x$',Interpreter='latex')
ylabel('$y$',Interpreter='latex')
title('$y = 4x^2 -x -5$',Interpreter='latex')