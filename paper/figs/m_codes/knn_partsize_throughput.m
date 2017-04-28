partsize = [100 300 500 700];
BaselineMethod = [5.9158 6.0790 6.1647 6.0394];
IndexedMethod = [382.7849 368.9402 260.4121 119.3075];
% BaselineMethod = [7.4882 8.0491 8.2887 8.2173];
% IndexedMethod = [158.9952 401.5258 302.8987 225.4537];

set(gca,'Visible','on','Units','normalized');
set(gca,'Units','normalized','FontSize',30);
box('on');
semilogy(partsize,IndexedMethod,'-ob',partsize,BaselineMethod,'-rs','LineWidth', 2, 'MarkerSize', 18);
hold on;

xlim(gca, [50, 750])
ylim(gca, [1 1500])
set(gca, 'XTick', 100:200:700, 'XMinorTick', 'off')
set(gca, 'YTick', [1 10 100 1000], 'YMinorTick', 'off')

xlabel('Partition size (\times10^3)','FontSize',28)
ylabel('Throughput (jobs/min)','FontSize',28)

h=legend('Simba', 'Spark SQL');
set(h,'Interpreter','tex','Location','NorthWest','FontSize',27,'Orientation','Horizontal','Box','off' );

print -depsc2 osm_knn_partsize_throughput