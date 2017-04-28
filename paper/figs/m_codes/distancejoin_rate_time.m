% Create some data
%rate = [2 10 50 250]./1000;
rate = [9.82 21.96 49.10 109.79]/10;
%osm
%RTree = [43.646 73.200 208.237 846.363];
SJMR = [59.985 81.881 229.702 939.911];
NLRTree = [382.316 424.774 476.146 643.253];
%gaussian
% RTree = [43.076 42.898 56.901 68.768 148.12];
% SJMR = [61.388 55.093 51.813 80.284 137.062];
% NLRTree = [315.280 318.986 326.972 317.037 354.038];

% Create a y-axis semilog plot using the semilogy function
% Plot SER data in blue and BER data in red

set(gca,'Visible','on','Units','normalized');
set(gca,'Units','normalized','FontSize',30);
box('on');
%loglog(rate,RTree,'->r',rate,SJMR,'-sb',rate,NLRTree,'-xm','LineWidth', 2, 'MarkerSize', 18);
semilogy(rate,SJMR,'-ob',rate,NLRTree,'-rs','LineWidth', 2, 'MarkerSize', 18);
hold on;

xlim([0, 12])
ylim([10,2000])
set(gca, 'XTick', 1:2:11, 'XMinorTick', 'off')
set(gca, 'YTick', [1 10 100 1000 10000], 'YMinorTick', 'off')

xlabel('Distance threshold \tau','FontSize',28)
ylabel('Running time (s)','FontSize',28)

h=legend('DJSpark','BDJSpark-R');
set(h,'Interpreter','tex','Location','NorthOutside','FontSize',27,'Orientation','Horizontal','Box','off' );

print -depsc2 osm_disj_rate