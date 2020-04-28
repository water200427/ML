%for 4(d)
%%%primal form
function [w, b, R, times] = Perceptron(X, Y)
% X = phi(X), Y = Y
% X(:,1), X(:,2),..., X(:, n) as column vectors
% m: 單個資料維度
% n: 資料筆數
    [m,n] = size(X);
    %%% count "R" (the max.)  
    norms = [];
    for i = 1:n
        norms = [norms; norm(X(:,n), 2)]; %1 or 2-norm?
    end
    R = max(norms);
    %%% count "R" (the max.)  
    
    w = zeros(m, 1);
    b = 0;
    times = 0;
    tag = 1;

    while (tag) & (times < 10000)
        tag = 0;
        for i = 1:n
            if Y(i) * (w'*X(:,i) + b) <= 0
                w = w + Y(i)*X(:,i);
                b = b + Y(i)*R*R;
                tag = 1;
            end
        end
        times = times + 1;
    end      
end