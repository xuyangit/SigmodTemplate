% Create some data
k = [1 10 20 30 40 50];
RTree = [78.655 87.142 99.027 108.408 114.610 105.413];
Voronoi = [135.055 163.647 205.713 253.055 290.662 330.481];
NLRTree = [1369.517 2456.042 3397.403 4355.359 5442.117 7644.765];
% RTree = [67.567 72.835 81.546 81.546 82.801 82.603];
% Voronoi = [153.995 182.888 218.416 233.450 282.798 307.234];
% NLRTree = [862.518 1824.601 2495.675 3005.263 3690.268 4115.112];
% Create a y-axis semilog plot using the semilogy function
% Plot SER data in blue and BER data in red

set(gca,'Visible','on','Units','normalized');
set(gca,'Units','normalized','FontSize',30);
box('on');
semilogy(k,RTree,'-ob',k,Voronoi,'-rs',k,NLRTree,'-xm','LineWidth', 2, 'MarkerSize', 18);
hold on;

xlim([-1.5 52.5])
ylim([10 20000])
set(gca, 'XTick', 0:10:50, 'XMinorTick', 'off')
set(gca, 'YTick', [1 10 100 1000 10000], 'YMinorTick', 'off')

xlabel('k','FontSize',28)
ylabel('Running time (s)','FontSize',28)

h=legend('RKJSpark', 'VKJSpark', 'BKJSpark-R');
set(h,'Interpreter','tex','Location','NorthOutside','FontSize',27,'Orientation','Horizontal','Box','off');

print -depsc2 osm_knnj_k