% Create some data
dim = [2 3 4 5 6];
% gaussian-3m-5d
RTree = [84.068 121.058 217.432 334.939 623.785];
Voronoi = [167.906 242.515 433.571 564.321 739.830];
NLRTree = [2795.851 2788.411 3159.865 3969.340 5652.169];
% RTree = [67.567 72.835 81.546 81.546 82.801 82.603];
% Voronoi = [153.995 182.888 218.416 233.450 282.798 307.234];
% NLRTree = [862.518 1824.601 2495.675 3005.263 3690.268 4115.112];
% Create a y-axis semilog plot using the semilogy function
% Plot SER data in blue and BER data in red

set(gca,'Visible','on','Units','normalized');
set(gca,'Units','normalized','FontSize',30);
box('on');
semilogy(dim,RTree,'-ob',dim,Voronoi,'-rs',dim,NLRTree,'-xm','LineWidth', 2, 'MarkerSize', 18);
hold on;

xlim([1.75 6.25])
ylim([10 20000])
set(gca, 'XTick', 2:1:6, 'XMinorTick', 'off')
set(gca, 'YTick', [1 10 100 1000 10000], 'YMinorTick', 'off')

xlabel('Dimension','FontSize',28)
ylabel('Running time (s)','FontSize',28)

h=legend('RKJSpark', 'VKJSpark', 'BKJSpark-R');
set(h,'Interpreter','tex','Location','NorthOutside','FontSize',27,'Orientation','Horizontal','Box','off');

print -depsc2 osm_knnj_dimension