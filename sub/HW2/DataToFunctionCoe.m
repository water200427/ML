function [A, B, C] = DataToFunctionCoe(X, Y, a, b)
%%% A, B, C 
% h(x1, x2) = A*x1 + B*x2 + C
    [m, n] = size(X)
    result = zeros(2,1);
    for i = 1:n
        result = result + eye(m) * a(i) * Y(i) * X(:,i);
    end
    A = result(1);
    B = result(2);
    C = b;
end