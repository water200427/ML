function [X, Y] = PNtoData(A_p, A_n)
    X = [A_p;A_n]';
    [m,~] = size(A_p);
    [n,~] = size(A_n);
    Y = [ones(m, 1);-ones(n, 1)];
end