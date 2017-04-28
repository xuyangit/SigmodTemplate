partsize = [100 300 500 700];

IndexedTime = [639.541 656.313 672.472 718.242];

% Create a y-axis semilog plot using the semilogy function
% Plot SER data in blue and BER data in red
set(gca,'Visible','on','Units','normalized');
set(gca,'Units','normalized','FontSize',30);
box('on');
plot(partsize,IndexedTime,'-ob', 'LineWidth', 2, 'MarkerSize', 18);
hold on;

xlim([50 750])
ylim([600 750])
set(gca, 'XTick', [100 300 500 700], 'XMinorTick', 'off')
set(gca, 'YTick', 500:50:800, 'YMinorTick', 'off')

xlabel('Partition size (\times10^3)','FontSize',28)
ylabel('Index construction time (s)','FontSize',28)

h=legend('Simba');
set(h,'Interpreter','tex','Location','NorthWest','FontSize',27,'Orientation','Horizontal','Box','off' )

print -depsc2 osm_index_partsize_time