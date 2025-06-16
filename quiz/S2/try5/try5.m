clc;
clear;

f = @(x) exp(-x.^2) .* sin(x);
max(f(linspace(0, 1, 1000)));


clc;
clear;

n = 150;
A = hilb(n);
B = A(2 : 2 : n, 5 : 5 : n);
sum(sum(B));


clc;
clear;

% f = inline('2 * x^2 + exp(x)');
% fplot(f, [-1, 1]);
% saveas(gcf, "graph.png");


clc;
clear;

x = 31 : 2 : 75;


clc;
clear;

x = [9, 5, 8, 1, 7, 5];
y = [3, 5, 5, 7, 5, 7];
x > y;


clc;
clear;

n = 100;
A = hilb(n);
tot = 0;
for i = 1 : n
    for j = 1 : n
        if A(i, j) < 0.03
            tot = tot + A(i, j);
        end
    end
end
tot;


clc;
clear;

 x = [7, 9, 3, 0, 0, 0];
 y = [7, 5, 8, 7, 3, 1];
 x & (~y)