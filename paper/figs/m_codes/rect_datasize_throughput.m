datasize = [30 50 70 100 300 500 700 1000];
BaselineMethod = [63.6605 37.8181 29.7227 27.0575 9.8479 5.8907 3.9923 2.9466];
IndexedMethod = [120.7428 100.0897 99.2385 104.0251 66.7376 49.4242 36.1831 28.2902];

set(gca,'Visible','on','Units','normalized');
set(gca,'Units','normalized','FontSize',30);
box('on');
semilogy(datasize,IndexedMethod,'-ob',datasize,BaselineMethod,'-rs','LineWidth', 2, 'MarkerSize', 18);
hold on;

xlim(gca,[-20 1050])
ylim(gca,[1 500])

set(gca,'XTick',0:200:1000,'XMinorTick','off')
set(gca,'YTick',[1 10 100 1000],'YMinorTick','off')

xlabel('Data size (\times10^6)','FontSize',28)
ylabel('Throughput (jobs/min)','FontSize',28)

h=legend('Simba', 'Spark SQL');
set(h,'Interpreter','tex','Location','NorthWest','FontSize',27,'Orientation','Horizontal','Box','off');
print -depsc2 osm_rect_datasize_throughput