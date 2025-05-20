i = 1 : 4;

v_i = [ones(size(i)); (tan(i) .^ 3) + 1; zeros(size(i))]';
w_i = [ones(size(i)); (tan(i + 1) .^ 3) - 1; ones(size(i))]';

A_i = cross(v_i, w_i);

for x = i
    fprintf("%d --> %f\n", x, norm(A_i(x, :), 2))
end