clc;
clear;

function [d] = qr_base(A, tol, m_max)
    for m = 1 : m_max
        [Q, R] = qr(A);
        A = R * Q;
        
        if norm(tril(A, -1), inf) <= tol                % ad infinito è diventata triangolare superiore
            break
        end
    end
    d = diag(A);
end

n = 10;
H = hilb(n);
m_max = 100;
tol = 1e-14;

auto = eig(H);
auto_qr = qr_base(H, tol, m_max);

B1 = [0 0 2; 1 0 1; 0 1 1];

A = B1;
for i = 1 : 100
    [Q, R] = qr(A);
    A = R * Q;
end
A

B2 = [0 1 0 1; 2 0 4 -2; -1 0 -1 0; -1 2 1 0];

A2 = B2;
for i = 1: 100
    [Q, R] = qr(A2);
    A2 = R * Q;
end
A2