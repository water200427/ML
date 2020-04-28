function Output = phi(X)
%%% ( R^2 )^n ---> ( R^4 ) ^n
% Mat_(2 x n) |---> Mat_(4 x n)
    Output1 = -X(1,:).*X(2,:);
    Output2 = X(1,:).^2;
    Output3 = X(1,:).*X(2,:);
    Output4 = X(2,:).^2;
    Output = [Output1;Output2;Output3;Output4]
end