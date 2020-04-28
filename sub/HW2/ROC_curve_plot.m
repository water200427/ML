function ROC_curve_plot(x, y)
    %%% test data
    % P, P, P, P, N, P, P, N, P, N, P, N, P, N, N, N, N, P, N, N 
    % x = [0 0 0 0 0 1 1 1 2 2 3 3 4 4 5 6 7 8 8 9 10]/10;
    % y = [0 1 2 3 4 4 5 6 6 7 7 8 8 9 9 9 9 9 10 10 10]/10;
    %%%
    plot (x, y,'b');
    hold on;
    plot([0 1],[0 1],':')
    axis square 
    set(gca,'XTick',-0.1:0.1:1.1);
    set(gca,'YTick',-0.1:0.1:1.1);
    
    title('ROC curve');
    xlabel('False positive rate') ;
    ylabel('True positive rate');
    T = text(0.04,0.2,'AUC value = area under the curve = 0.81','FontSize',13);
end