clc;
clear;

function [lambda_new] = pot_inverse(A, z, p, tol, m_max)
    lambda_old = p;
    w = z / norm(z);
    [L, U, P] = lu(A - p * eye(size(A)));
    
    for m = 1 : m_max
        z = U \ (L \ (P * w));
        lambda_new = p + (1 / (w' * z));

        if abs(lambda_new - lambda_old) / abs(lambda_new) <= tol
            break
        end

        w = z / norm(z);
        lambda_old = lambda_new;
    end
end

z = ones(3, 1);
tol = 1e-10;
p = 0.5;
m_max = 1000;

A1 = [1 -2 0; 0 2 0; 1 1 3];
l1_max = pot_inverse(A1, z, p, tol, m_max)

A2 = [0.5 -2 0; 0 2 0; 1 1 3];
l2_max = pot_inverse(A2, z, p, tol, 1)              % --> 0.5 è autovalore

A3 = [0 -2 0; 0 1 0; 1 1 3]
l3_max = pot_inverse(A3, z, p, tol, m_max)              % p è equidistante tra 2 autovalori --> non può convergere 