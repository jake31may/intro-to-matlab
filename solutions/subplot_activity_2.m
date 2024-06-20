x = -pi:0.01:pi;
y1 = sin(x); y2 = cos(x); y3 = y1 + y2;

figure(5)
subplot(2,2,1)            % Creates subplot ( 2 rows, 2 columns), and plots at 1st position
plot(x,y1,'b',LineWidth=2)
grid on
xlabel('x'), ylabel('y')
title('$y = \sin(x)$',Interpreter = 'Latex')

subplot(2,2,3)           % Creates subplot ( 2 rows, 2 columns), and plots at 3rd position
plot(x,y2,'r',LineWidth=2)
grid on
xlabel('x'), ylabel('y')
title('$y=\cos(x)$',Interpreter = 'Latex')

subplot(2,2,[2,4])           % Creates subplot ( 2 rows, 2 column), and plots at 2nd-4th position
plot(x,y3,'m',LineWidth=2)
grid on
xlabel('x'), ylabel('y')
title('$y=\cos(x)+\sin(x)$',Interpreter = 'Latex')