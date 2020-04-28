function [A_mean, A_std] = test(select_nums, times)
    

    % 產生10000個亂數
    S = rand(10000, 1);
    A = [];
    for i = [1: times]
        %fprintf('第%d次',i)
        A = [A; S(randperm(10000,select_nums))' ];
        %size(A)
    end
    A_mean = mean(A')';
    A_std = std(A')';
end