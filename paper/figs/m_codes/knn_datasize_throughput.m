datasize = [30 50 70 100 300 500 700 1000];
% gaussian
% BaselineMethod = [78.2656 56.0999 49.0934 39.2131 18.1749 10.2973 8.0972 5.9285];
% IndexedMethod = [370.5351 343.2573  348.8858 348.9508 339.1248 330.3237 295.5549 259.2397];
% osm
BaselineMethod = [98.9952 57.8453 27.1258 30.2146 11.5442 7.0963 4.1123 3.6123];
IndexedMethod = [230.1849 238.1879  205.6583 245.9057 243.5876 260.4121 218.0391 199.7896];

set(gca,'Visible','on','Units','normalized');
set(gca,'Units','normalized','FontSize',30);
box('on');
semilogy(datasize,IndexedMethod,'-ob',datasize,BaselineMethod,'-rs','LineWidth', 2, 'MarkerSize', 18);
hold on;

xlim(gca, [-20, 1050])
ylim(gca, [1 1000])
set(gca, 'XTick', 0:200:1000, 'XMinorTick', 'off')
set(gca, 'YTick', [1 10 100 1000], 'YMinorTick', 'off')

xlabel('Data size (\times10^6)','FontSize',28)
ylabel('Throughput (jobs/min)','FontSize',28)

h=legend('Simba', 'Spark SQL');
set(h,'Interpreter','tex','Location','NorthWest','FontSize',27,'Orientation','Horizontal','Box','off' );

print -depsc2 osm_knn_datasize_throughput