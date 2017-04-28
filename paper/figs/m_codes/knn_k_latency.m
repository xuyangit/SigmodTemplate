% Create some data
k = [1 10 20 30 40 50];
% gaussian
% BaselineMethod = [66.2835 66.6354 66.0263 66.8275 65.5685 67.0857];
% IndexedMethod = [1.8239 1.8201 1.8348 1.8246 1.8166 1.8278];
% osm
BaselineMethod = [101.3853 100.6336 99.8894 100.6972 101.9698 100.3993];
IndexedMethod = [2.6181 2.2631 2.2138 2.2178 2.2286 2.2070];
% Create a y-axis semilog plot using the semilogy function
% Plot SER data in blue and BER data in red

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
ylabel('Latency (s)','FontSize',28)

h=legend('Simba', 'Spark SQL');
set(h,'Interpreter','tex','Location','NorthWest','FontSize',27,'Orientation','Horizontal','Box','off' );

print -depsc2 osm_knn_k_latency