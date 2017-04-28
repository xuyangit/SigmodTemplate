% Create some data
partsize = [100 300 500 700];
BaselineMethod = [2.1966 2.7975 5.6617 6.2908];
IndexedMethod = [95.9098 71.2616 47.8929 25.3867];

set(gca,'Visible','on','Units','normalized');
set(gca,'Units','normalized','FontSize',30);
box('on');
semilogy(partsize,IndexedMethod,'-ob',partsize,BaselineMethod,'-rs','LineWidth', 2, 'MarkerSize', 18);
hold on;

xlim(gca,[50 750])
ylim(gca,[1 300])

set(gca,'XTick',100:200:700,'XMinorTick','off')
set(gca,'YTick',[1 10 100 1000],'YMinorTick','off')

xlabel('Partition size (\times10^3)','FontSize',28)
ylabel('Throughput (jobs/min)','FontSize',28)

h=legend('Simba', 'Spark SQL');
set(h,'Interpreter','tex','Location','NorthWest','FontSize',27,'Orientation','Horizontal','Box','off');
print -depsc2 osm_rect_partsize_throughput