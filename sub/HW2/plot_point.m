function plot_point(A_p, A_n)
%%%
% A_p = [0 0;0.5 0;0 0.5;-0.5 0;0 -0.5];
% A_n = [0.5 0.5;0.5 -0.5; -0.5 0.5;-0.5 -0.5;1 0;0 1;-1 0;0 -1];
% B_p = [0.5 0; 0 0.5; -0.5 0;0 -0.5];
% B_n = [0.5 0.5; 0.5 -0.5; -0.5 0.5; -0.5 -0.5];
%%%
    plot(A_p(:,1), A_p(:,2),'o', 'MarkerSize', 12, 'LineWidth',2);
    hold on
    plot(A_n(:,1), A_n(:,2),'x', 'MarkerSize', 12, 'LineWidth',2);
    m = 1.5;
    axis([-m m -m m]);  
    
    grid on
end