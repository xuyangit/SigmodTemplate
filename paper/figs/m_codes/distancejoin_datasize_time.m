% Create some data
datasize = [1 3 5 7 10];
% osm
RTree = [70.427 208.237 380.712 617.766 3271.634];
SJMR = [68.154 229.702 297.854 621.823 1339.013];
NLRTree = [62.376 476.146 1480.262 3420.410 6550.604];
% gaussian
% RTree = [20.768 54.896 72.613 70.177 97.927];
% SJMR = [22.91 65.482 77.025 74.641 105.377];
% NLRTree = [44.761 309.455 954.796 1993.227 4798.519];

% Create a y-axis semilog plot using the semilogy function
% Plot SER data in blue and BER data in red

set(gca,'Visible','on','Units','normalized');
set(gca,'Units','normalized','FontSize',30);
box('on');
semilogy(datasize,SJMR,'-ob',datasize,NLRTree,'-rs','LineWidth', 2, 'MarkerSize', 18);
hold on;

xlim([0.5 10.5])
ylim([10 80000])
set(gca, 'XTick', [1 3 5 7 10], 'XMinorTick', 'off')
set(gca, 'YTick', [1 10 100 1000 10000], 'YMinorTick', 'off')

xlabel('\textbf{Data size (x $\times 10^6 \bowtie_{\tau}$ x $\times 10^6$)}','FontSize',28, 'Interpreter', 'latex')
ylabel('Running time (s)','FontSize',28)

text(0.8, 40000, '\times', 'FontSize', 60, 'Color', 'r');
text(1.7, 37000, 'Spark SQL crashes after 10 hours', 'FontSize', 24)

h=legend('DJSpark','BDJSpark-R');
set(h,'Interpreter','tex','Location','NorthOutside','FontSize',27,'Orientation','Horizontal','Box','off' );

print -depsc2 osm_disj_datasize