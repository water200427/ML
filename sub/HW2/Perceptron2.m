%%%dual form
function [a, b, L, check, times] = Perceptron2(X, Y)
% X(:,1), X(:,2),..., X(:, n) as column vectors
% m: 單個資料維度
% n: 資料筆數
    [~,n] = size(X);
    %%% count "L" (the max.)  
    norms = [];
    for i = 1:n
        norms = [norms; norm(X(:,n), 2)];
    end
    L = max(norms);
    %%% count "L" (the max.)  
    
    a = zeros(n, 1);
    b = 0;
    times = 0;
    tag = 1;

    while (tag) & (times < 1000)
        
        tag = 0;
        for i = 1:n
            
            %%% count "check" (the sigma)            
            check  = 0;
            for j = 1:n
               check = check + a(j) * Y(i)* (Y(j)) * ((X(:,i)'*X(:,j))^2);
            end
            check = check + Y(i)*b;
            %%% count "check" (the sigma) end   
           
            if check <= 0
                a(i) = a(i) + 1;
                b = b + Y(i)*L*L;
                tag = 1;
            end
        end
        times = times + 1;
    end  
end