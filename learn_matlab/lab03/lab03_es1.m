clc;
clear;

function [lambda_new] = potenze(A, z, tol, m_max)
    w = z / norm(z);
    lambda_old = 0;
    for m = 1 : m_max
        z = A * w;
        lambda_new = w' * z;
        w = z / norm(z);
        if abs(lambda_new - lambda_old) / lambda_new <= tol
            break
        end
        lambda_old = lambda_new;
    end
end

m_max = 1000;
z = (1 : 3)';
tol = 1e-10;

A1 = [1 2 0; 1 0 0; 0 1 0];
l1_max = potenze(A1, z, tol, m_max)

A2 = [0.1 3.8 0; 1 0 0; 0 1 0];
l2_max = potenze(A2, z, tol, m_max)

A3 = [0 -1 0; 1 0 0; 0 1 0];                    % ci sono 2 autovalori complessi coniugati --> non converge
l3_max = potenze(A3, z, tol, m_max)