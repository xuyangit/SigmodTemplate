% Create some data
dim = [2 3 4 5 6];
% dim = [2 3 4 5 6 7];
% gaussian-500m
% BaselineMethod = [9.7429 7.7070 6.0432 5.1018 4.3005];
% IndexedMethod = [324.3734 265.5220 221.4202 168.7052 154.2797];

% gaussian-700m
BaselineMethod = [4.0739 5.6793 4.5673 3.8769 3.1890];
IndexedMethod = [293.1233 254.8918 209.3101 164.5856 112.7057];

% gdelt-75m
% BaselineMethod = [59.0551 43.2445 34.2622 25.8133 25.0181 20.7076];
% IndexedMethod = [186.7146 270.9954 236.1517 185.8045 169.8206 158.6983];

set(gca,'Visible','on','Units','normalized');
set(gca,'Units','normalized','FontSize',30);
box('on');
semilogy(dim,IndexedMethod,'-ob',dim,BaselineMethod,'-rs','LineWidth', 2, 'MarkerSize', 18);
hold on;

xlim(gca, [1.75, 6.25])
ylim(gca, [1 1000])
set(gca, 'XTick', 2:1:7, 'XMinorTick', 'off')
set(gca, 'YTick', [1 10 100 1000], 'YMinorTick', 'off')

xlabel('Dimension','FontSize',28)
ylabel('Throughput (jobs/min)','FontSize',28)

h=legend('Simba', 'Spark SQL');
set(h,'Interpreter','tex','Location','NorthWest','FontSize',27,'Orientation','Horizontal','Box','off' );

% print -depsc2 gdelt_knn_dimension_throughput
print -depsc2 gaussian700m_knn_dimension_throughput