clc;
clear;

D = 1/100*[410, 230, -95, 380, 210;
230, 600, -175, 190, -120;
-95, -175, 520, 270, 140;
380, 190, 270, 700, -200;
210, -120, 140, -200, 480];

[m, n] = size(D);
I = eye(size(D));

auto = eig(D)

molt_geo_1 = 0;
for i = 1 : length(auto)
    lambda = auto(i);
    molt_geo_1 = molt_geo_1 + (n - rank(D - lambda * I) == 1);
end

molt_geo_1
length(auto)

r = max(abs(auto))