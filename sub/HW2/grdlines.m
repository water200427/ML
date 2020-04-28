function [x, f_value, iter] = grdlines(Q, p, x0, esp)
%%% test data
% Q = [1 0; 0 1000]; p = [0 0]';
% x0 = [1000 1 ]'; esp = power(10, -8);
%%%
% min 0.5 * x'Qx + p'x
% Solving unconstrained minimization via
% steep descent with exact line search
    flag = 1;
    iter = 0;
    while flag > esp
        grad = Q*x0+p;
        temp1 = grad'*grad;
        if temp1 < power(10, -12) 
            flag = esp;
        else
            stepsize = temp1/(grad'*Q*grad); 
            x1 = x0 - stepsize*grad;
            flag = norm(x1-x0);
            x0 = x1;
        end
            iter = iter + 1;
    end
    x = x0;
    f_value = 0.5*x'*Q*x+p'*x;
end