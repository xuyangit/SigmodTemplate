% Create some data
dim = [2 3 4 5 6];
% dim = [2 3 4 5 6 7];
% gaussian-500m
% BaselineMethod = [57.3024 71.7012 91.0284 107.8619 126.9951];
% IndexedMethod = [1.7106 2.0621 2.4822 3.2908 3.6157];

% gaussian-700m
BaselineMethod = [138.6728 97.9289 121.4652 142.8826 173.7561];
IndexedMethod = [1.9069 2.1898 2.6351 3.3709 5.0175];

% gdelt-75m
% BaselineMethod = [8.6159 11.7494 14.7704 17.6621 19.4921 23.4369];
% IndexedMethod = [2.9966 2.0380 2.3239 2.9647 3.2125 3.4330];

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
ylabel('Latency (s)','FontSize',28)

h=legend('Simba', 'Spark SQL');
set(h,'Interpreter','tex','Location','NorthWest','FontSize',27,'Orientation','Horizontal','Box','off' );

% print -depsc2 gdelt_knn_dimension_latency
print -depsc2 gaussian700m_knn_dimension_latency