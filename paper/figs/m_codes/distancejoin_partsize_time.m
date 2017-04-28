% Create some data
part_size = [10 30 50 100];
%osm
RTree = [129.899 208.237 241.139 383.545];
SJMR = [144.673 229.702 258.492 329.088];
NLRTree = [2337.408 476.146 285.487 184.15];
%gaussian
% RTree = [59.077 46.379 42.740 41.697];
% SJMR = [77.764 58.393 60.590 52.253];
% NLRTree = [2002.991 320.414 174.644 91.945];

set(gca,'Visible','on','Units','normalized');
set(gca,'Units','normalized','FontSize',30);
box('on');
semilogy(part_size,SJMR,'-ob',part_size,NLRTree,'-rs','LineWidth', 2, 'MarkerSize', 18);
hold on;

xlim([5 105])
ylim([10 20000])
set(gca, 'XTick', 10:20:100, 'XMinorTick', 'off')
set(gca, 'YTick', [1 10 100 1000 10000], 'YMinorTick', 'off')

xlabel('Partition size (\times10^3)','FontSize',28)
ylabel('Running time (s)','FontSize',28)

h=legend('DJSpark','BDJSpark-R');
set(h,'Interpreter','tex','Location','NorthOutside','FontSize',27,'Orientation','Horizontal','Box','off' );

print -depsc2 osm_disj_partsize