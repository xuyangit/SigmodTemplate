% Create some data
k = [1 10 20 30 40 50];
% gaussian
% BaselineMethod = [8.3100 8.2391 8.3248 8.2038 8.3773 8.1906];
% IndexedMethod = [306.7422 312.2658 310.2539 312.4414 313.7714 312.5847];
% osm
BaselineMethod = [7.0908 7.0638 7.0665 7.1366 7.1097 7.0782];
IndexedMethod = [233.5976 260.4121 259.1770 256.2591 256.1322 253.7899];

set(gca,'Visible','on','Units','normalized');
set(gca,'Units','normalized','FontSize',30);
box('on');
semilogy(k,IndexedMethod,'-ob',k,BaselineMethod,'-rs','LineWidth', 2, 'MarkerSize', 18);
hold on;

xlim(gca, [-2.5 52.5])
ylim(gca, [1 1000])
set(gca, 'XTick', 0:10:50, 'XMinorTick', 'off')
set(gca, 'YTick', [1 10 100 1000], 'YMinorTick', 'off')

xlabel('k','FontSize',28)
ylabel('Throughput (jobs/min)','FontSize',28)

h=legend('Simba', 'Spark SQL');
set(h,'Interpreter','tex','Location','NorthWest','FontSize',27,'Orientation','Horizontal','Box','off' );

print -depsc2 osm_knn_k_throughput