%  Utilizzare il comando plot di Matlab per rappresentare graficamente le seguenti funzioni:

set(gcf, 'Visible', 'on'); % Forza la visibilità della figura

x = linspace(-100, 100, 100);
y = x;
plot(x, y, 'b', 'LineWidth', 10);
drawnow;