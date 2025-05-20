i = 1 : 4;

%{
[r c] = size(i);

for v = i
    v_i(v, :) = [-(cos(v) ^ 2) ((sin(v) ^ 3) + 1) 0];
    w_i(v, :) = [1 (((sin(v + 1)) ^ 3) - 1) 1];
    A_i(v) = norm(cross(v_i(v, :), w_i(v, :)), 2);
end
%}

v_i = [-(cos(i) .^ 2); ((sin(i) .^ 3) + 1); zeros(size(i))]';
w_i = [ones(size(i)); (((sin(i + 1)) .^ 3) - 1); ones(size(i))]';

A_i = cross(v_i, w_i);

for x = i
    fprintf("A_%d:\t%f\n", x, norm(A_i(x, :), 2));
end