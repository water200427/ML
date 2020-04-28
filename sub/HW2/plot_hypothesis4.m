%for 4(e)
function plot_hypothesis4(X, Y)
%%%
% r = unifrnd(-1.5, 1.5, [2,10000]);
%%% A
% [X, Y] = PNtoData( [0 0;0.5 0;0 0.5;-0.5 0;0 -0.5],[0.5 0.5; 0.5 -0.5; -0.5 0.5;-0.5 -0.5;1 0;0 1;-1 0;0 -1])
%%% 
    transformed_X = phi(X)
    [w, b, ~, ~] = Perceptron(transformed_X, Y)
    
    M = 10000;
    r = unifrnd(-1.5, 1.5, [2,M]);
    R = phi(r);
    m = 1.5;
    for i = 1:M
       if w'*R(:,i) +b > 0
           plot(r(1,i), r(2,i),'+b' );
           hold on;
       else
           %plot(r(1,i), r(2,i),'+r' );          
       end
    end
    axis([-m m -m m]);  
end