% Create some data
rate = [0.0001 0.001 0.01 0.1];
BaselineMethod = [5.4332 5.6483 5.9285 5.5442];
IndexedMethod = [175.8046 123.4009 47.8929 11.6102];
% BaselineMethod = [6.5505 6.6542 6.6392 6.3741];
% IndexedMethod = [227.1230 151.1609 67.7998 31.0028];

set(gca,'Visible','on','Units','normalized');
set(gca,'Units','normalized','FontSize',30);
box('on');
loglog(rate,IndexedMethod,'-ob',rate,BaselineMethod,'-rs','LineWidth', 2, 'MarkerSize', 18);
hold on;

%xlim(gca, [0.0001 0.001 0.01 0.1])
xlim(gca, [0.0001/(10^0.25) 0.1*(10^0.25)])
ylim(gca, [1 500])
set(gca, 'XTick', [0.0001 0.001 0.01 0.1], 'XMinorTick', 'off')
set(gca, 'YTick', [1 10 100], 'YMinorTick', 'off')

xlabel('Query area (%)','FontSize',28)
ylabel('Latency (s)','FontSize',28)

h=legend('Simba', 'Spark SQL');
set(h,'Interpreter','tex','Location','NorthWest','FontSize',27,'Orientation','Horizontal','Box','off');

print -depsc2 osm_rect_rate_throughput