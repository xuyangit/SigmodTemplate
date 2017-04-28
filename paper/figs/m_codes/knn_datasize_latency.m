datasize = [30 50 70 100 300 500 700 1000];
% gaussian
% BaselineMethod = [6.2358 9.0533 10.3582 13.2655 29.8610 52.9901 67.8481 91.8493];
% IndexedMethod = [1.4763 1.6133 1.5884 1.5801 1.6325 1.6799 1.8978 2.1706];
% osm
BaselineMethod = [10.686 13.841 17.6345 23.9450 60.9891 100.2328 133.4837 200.2352];
IndexedMethod = [2.1757 2.8884 2.7469 2.3651 2.2858 2.5505 2.6019 2.8635];

set(gca,'Visible','on','Units','normalized');
set(gca,'Units','normalized','FontSize',30);
box('on');
semilogy(datasize,IndexedMethod,'-ob',datasize,BaselineMethod,'-rs','LineWidth', 2, 'MarkerSize', 18);
hold on;

xlim(gca, [-20, 1050])
ylim(gca, [0.8 1000])
set(gca, 'XTick', 0:200:1000, 'XMinorTick', 'off')
set(gca, 'YTick', [1 10 100 1000], 'YMinorTick', 'off')

xlabel('Data size (\times10^6)','FontSize',28)
ylabel('Latency (s)','FontSize',28)

h=legend('Simba', 'Spark SQL');
set(h,'Interpreter','tex','Location','NorthWest','FontSize',27,'Orientation','Horizontal','Box','off' );

print -depsc2 osm_knn_datasize_latency