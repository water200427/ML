%for 4 (b) (c)
function plot_hypothesis2(X, Y)
%%%
% r = unifrnd(-1.5, 1.5, [2,10000]);
%%% A
% [X, Y] = PNtoData( [0 0;0.5 0;0 0.5;-0.5 0;0 -0.5],[0.5 0.5; 0.5 -0.5; -0.5 0.5;-0.5 -0.5;1 0;0 1;-1 0;0 -1])
%%% B
% [X, Y] = PNtoData( [0.5 0; 0 0.5; -0.5 0;0 -0.5], [0.5 0.5; 0.5 -0.5; -0.5 0.5; -0.5 -0.5])
%%%
    [a, b, L, check, times] = Perceptron2(X, Y);
    [A, B, C] = DataToFunctionCoe(X, Y, a, b);
    M = 10000;
    r = unifrnd(-1.5, 1.5, [2,M]);
    m = 1.5;
    for i = 1:M
       if (r(:,i)')*[A;B] + C > 0
           plot(r(1,i), r(2,i),'+b' );
           hold on;
       else
           %plot(r(1,i), r(2,i),'+r' );          
       end
    end
    title('plot hypothesis ')  %for A, B
    axis([-m m -m m]);  
end