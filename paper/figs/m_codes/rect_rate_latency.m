% Create some data
rate = [0.0001 0.001 0.01 0.1];
BaselineMethod = [109.6440 106.1257 108.2890 114.2979];
IndexedMethod = [3.5178 4.6927 11.4838 50.6030];
% BaselineMethod = [86.0583 84.4433 84.5897 88.1091];
% IndexedMethod = [2.5226 3.8336 8.6373 18.9244];

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

print -depsc2 osm_rect_rate_latency