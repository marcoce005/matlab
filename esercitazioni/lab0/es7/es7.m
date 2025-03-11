%  Rappresentare graficamente la funzione 
% f(x) = sqrt((100(1 - 0.01x^2)^2 + 0.02x^2) / (1 - x^2)^2 + 0.1x^2)         x ∈ [0.1, 100]

x = linspace(0.1, 100, 10000);
y = sqrt((100 .* ((1 - 0.01 .* (x .^ 2)) .^ 2)) ./ (((1 - (x .^ 2)) .^ 2) + 0.1 .* (x .^ 2)));

plot(y);
saveas(gcf, "es7_plot1.png");

figure;
loglog(y);
saveas(gcf, "es7_plot2.png");