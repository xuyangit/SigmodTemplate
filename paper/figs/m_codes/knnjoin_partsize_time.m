% Create some data
part_size = [10 30 50 100];
RTree = [146.494 96.384 76.580 83.509];
Voronoi = [266.145 164.472 172.812 376.144];
NLRTree = [22237.171 2680.145 1229.967 506.335];
% RTree = [113.126 80.316 72.941 81.784];
% Voronoi = [389.795 172.953 148.492 255.743];
% NLRTree = [18568.808 2680.145 1229.967 506.335];
% Create a y-axis semilog plot using the semilogy function
% Plot SER data in blue and BER data in red
set(gca,'Visible','on','Units','normalized');
set(gca,'Units','normalized','FontSize',30);
box('on');
semilogy(part_size,RTree,'-ob',part_size,Voronoi,'-rs',part_size,NLRTree,'-xm','LineWidth', 2, 'MarkerSize', 18);
hold on;

xlim([5 105])
ylim([10 20000])
set(gca, 'XTick', 10:20:100, 'XMinorTick', 'off')
set(gca, 'YTick', [1 10 100 1000 10000], 'YMinorTick', 'off')

xlabel('Partition size (\times10^3)','FontSize',28)
ylabel('Running time (s)','FontSize',28)

h=legend('RKJSpark', 'VKJSpark', 'BKJSpark-R');
set(h,'Interpreter','tex','Location','NorthOutside','FontSize',27,'Orientation','Horizontal','Box','off');

print -depsc2 osm_knnj_partsize