% Create some data
dim = [2 3 4 5 6];
% dim = [2 3 4 5 6 7];
% gaussian-500m
% BaselineMethod = [70.2941 79.7531 91.6876 98.1465 117.5196];
% IndexedMethod = [5.2537 2.8638 3.0357 3.2908 2.7913];

% gaussian-700m
BaselineMethod = [101.0209 105.3753 122.6714 151.2439 196.0248];
IndexedMethod = [7.6451 3.0064 3.1043 3.5302 3.9644];

% gdelt-75m
% BaselineMethod = [11.6554 13.2701 14.8185 18.1953 27.3066 30.9957];
% IndexedMethod = [5.3320 3.3827 3.8479 5.1135 7.5514 4.2251];

set(gca,'Visible','on','Units','normalized');
set(gca,'Units','normalized','FontSize',30);
box('on');
semilogy(dim,IndexedMethod,'-ob',dim,BaselineMethod,'-rs','LineWidth', 2, 'MarkerSize', 18);
hold on;

xlim(gca, [1.75 6.25])
ylim(gca, [1 1000])

set(gca,'XTick',2:1:7,'XMinorTick','off')
set(gca,'YTick',[1 10 100 1000],'YMinorTick','off')

xlabel('Dimension','FontSize',28)
ylabel('Latency (s)','FontSize',28)

h=legend('Simba', 'Spark SQL');
set(h,'Interpreter','tex','Location','NorthWest','FontSize',27,'Orientation','Horizontal','Box','off');

print -depsc2 gaussian700m_rect_dimension_latency
% print -depsc2 gdelt_rect_dimension_latency