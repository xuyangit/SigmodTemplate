% Create some data
datasize = [1 3 5 7 10];
RTree = [46.390 83.408 185.962 174.864 338.474];
Voronoi = [57.038 167.841 320.391 474.232 796.233];
NLRTree = [151.185 2672.44 12894.932 20000 30000];
NestedLoop = [5477.924 45000 20000 30000 40000];
% RTree = [40.057 77.33 128.686 151.835 240.564];
% Voronoi = [62.003 177.552 327.168 368.926 671.946];
% NLRTree = [114.641 1892.618 5835.071 14810.501 40000];
%NestedLoop = [5477.924 45000 20000 30000 40000];
% Create a y-axis semilog plot using the semilogy function
% Plot SER data in blue and BER data in red

set(gca,'Visible','on','Units','normalized');
set(gca,'Units','normalized','FontSize',30);
box('on');
plot = semilogy(datasize,RTree,'-ob',datasize,Voronoi,'-sr',datasize,NLRTree,'-xm','LineWidth', 2, 'MarkerSize', 18);
% set(plot(4), 'color', [0 2/3 0])
% datasize,NestedLoop,'-o',
hold on;

xlim([0.5 10.5])
ylim([10 20000])
set(gca, 'XTick', [1 3 5 7 10], 'XMinorTick', 'off')
set(gca, 'YTick', [1 10 100 1000 10000], 'YMinorTick', 'off')

xlabel('\textbf{Data size (x $\mathbf{\times 10^6 \bowtie_{knn}}$ x $\mathbf{\times 10^6}$)}','FontSize',28, 'Interpreter', 'latex')
ylabel('Running time (s)','FontSize',28)
set(gca,'FontName','Helvetica');

h=legend('RKJSpark', 'VKJSpark', 'BKJSpark-R', 'BKJSpark-N');
set(h,'Interpreter','tex','Location','NorthOutside','FontSize',27,'Orientation','Horizontal','Box','off');

print -depsc2 osm_knnj_datasize