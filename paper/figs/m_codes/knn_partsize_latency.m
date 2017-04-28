% Create some data
partsize = [100 300 500 700];
% gaussian
% BaselineMethod = [73.2817 68.1993 66.3406 66.8405];
% IndexedMethod = [3.6387 1.3653 1.8511 2.5276];
% osm
BaselineMethod = [96.4652 95.3773 100.2328 102.9452];
IndexedMethod = [1.4760 1.5646 2.3072 4.7859];

set(gca,'Visible','on','Units','normalized');
set(gca,'Units','normalized','FontSize',30);
box('on');
semilogy(partsize,IndexedMethod,'-ob',partsize,BaselineMethod,'-rs','LineWidth', 2, 'MarkerSize', 18);
hold on;

xlim(gca, [50, 750])
ylim(gca, [0.8 1000])
set(gca, 'XTick', 100:200:700, 'XMinorTick', 'off')
set(gca, 'YTick', [1 10 100 1000], 'YMinorTick', 'off')

xlabel('Partition size (\times10^3)','FontSize',28)
ylabel('Latency (s)','FontSize',28)

h=legend('Simba', 'Spark SQL');
set(h,'Interpreter','tex','Location','NorthWest','FontSize',27,'Orientation','Horizontal','Box','off' );

print -depsc2 osm_knn_partsize_latency