%%%
function [X1, X2, Y, A, b, w, MAE] = fit_and_plot(n)
    % n : �e���I���Ӽ�
    % X1, X2 : random in (-1, 1) ���ͪ�����I
    %  = 2*x1^2 + x2^2 - 2*x1*x2 + 2*x1 - x2 + epsn
    % epsn : normal random with sigma = 1, mu = 0
    % w : Ax = b �̤p����k�������, �]������ y = ax^2 + by^2 + cxy + dx + ey + f ���Y�� 
    % w = [a b c d e f]'
    % MAE : HW1_6(c) �ҨD

    X1 = 2*rand(n,1) - 1;
    X2 = 2*rand(n,1) - 1;
    A = [];
    b = [];
    Y = [];
    MAE = 0;
    
    for i = [1:n]
        x1 = X1(i);
        x2 = X2(i);
        epsn = randn;
        Y =[ Y;(2*x1^2 + x2^2 - 2*x1*x2 + 2*x1 - x2 + epsn)];
        r = [x1^2, x2^2, x1*x2, x1, x2, 1 ];
        A = [A;r];
        b = [b;Y(i)];           
    end
    
    %�y n ���I
    plot3(X1,X2,Y','.');
    hold;
    rotate3d on;
    
    w = inv(A' * A )*A'*b;
    
    %�e����
    pt_num = 30;
    edge_length =1.5;
    XX = [-edge_length:4/pt_num:edge_length];
    YY = [-edge_length:4/pt_num:edge_length];
    [xx, yy] = meshgrid(XX, YY);
    zz = w(1)*xx.^2 + w(2)*yy.^2 + w(3)* xx.*yy+ w(4)*xx + w(5)*yy+ w(6);
    %zz = x'.*[xx.^2 xx.*yy yy.^2 xx yy 1]; ?? 
    surf(xx, yy, zz);
    
    MAE =  norm(b - A*w,1)/n;
end

%%%