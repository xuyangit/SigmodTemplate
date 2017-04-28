dim = [2 3 4 5 6];

IndexedTime = [707.649 874.942 1082.601 1251.331 1499.447];

% Create a y-axis semilog plot using the semilogy function
% Plot SER data in blue and BER data in red
set(gca,'Visible','on','Units','normalized');
set(gca,'Units','normalized','FontSize',30);
box('on');
plot(dim,IndexedTime,'-ob', 'LineWidth', 2, 'MarkerSize', 18);
hold on;

xlim([1.75 6.25])
ylim([500 1700])
set(gca, 'XTick', 2:1:6, 'XMinorTick', 'off')
set(gca, 'YTick', 500:500:2000, 'YMinorTick', 'off')

xlabel('Dimension','FontSize',28)
ylabel('Index construction time (s)','FontSize',28)

h=legend('Simba');
set(h,'Interpreter','tex','Location','NorthWest','FontSize',27,'Orientation','Horizontal','Box','off' );

print -depsc2 index_dim_time