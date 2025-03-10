function value = f(x_0)
    if x_0 < 0
        value = -2 * x_0;
    end

    if x_0 == 0
        value = 0;
    end

    if x_0 > 0
        value = 2 * x_0;
    end
end

%{
x = linspace(-1, 1, 1000);
x(1) = [];              % exclude first element
y = f(-1);

for i = x
    y = [y f(i)];
end

x = [-1 x]; 
%}

fplot(@f, [-1 1], 1000);
saveas(gcf, "es1_plot.png");