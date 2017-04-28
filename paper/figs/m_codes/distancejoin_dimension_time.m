% Create some data
dim = [2 3 4 5 6];
%osm
RTree = [56.912 58.876 60.596 86.983 217.765];
SJMR = [50.332 59.858 75.953 110.749 195.657];
NLRTree = [323.357 344.387 391.365 504.179 584.210];
%gaussian
% RTree = [43.076 42.898 56.901 68.768 148.12];
% SJMR = [61.388 55.093 51.813 80.284 137.062];
% NLRTree = [315.280 318.986 326.972 317.037 354.038];

set(gca,'Visible','on','Units','normalized');
set(gca,'Units','normalized','FontSize',30);
box('on');
semilogy(dim,SJMR,'-ob',dim,NLRTree,'-rs','LineWidth', 2, 'MarkerSize', 18);
hold on;

xlim([1.75 6.25])
ylim([10 2000])
set(gca, 'XTick', 2:1:7, 'XMinorTick', 'off')
set(gca, 'YTick', [1 10 100 1000 10000], 'YMinorTick', 'off')

xlabel('Dimension','FontSize',28)
ylabel('Running time (s)','FontSize',28)

h=legend('DJSPark','BDJSpark-R');
set(h,'Interpreter','tex','Location','NorthOutside','FontSize',27,'Orientation','Horizontal','Box','off' );

print -depsc2 osm_disj_dimension