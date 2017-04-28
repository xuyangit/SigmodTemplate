% Create some data
clc;clear;hold off;
datasize = [30 50 70 100 300 500 700 1000];
% osm
BaselineMethod = [12.1835 15.6939 18.6081 24.5458 67.3640 108.2890 142.1456 217.3320];
IndexedMethod = [4.5523 5.2710 5.4787 5.7669 8.7164 11.8833 16.3016 23.5039];
% gaussian
% BaselineMethod = [8.0775 11.1674 18.6081 12.9178 38.8775 68.9994 85.3129 123.3805];
% IndexedMethod = [2.7899 3.2515 3.6071 4.0266 6.0088 7.4574 8.6373 10.6091];
% Create a y-axis semilog plot using the semilogy function
% Plot SER data in blue and BER data in red

set(gca,'Visible','on','Units','normalized');
set(gca,'Units','normalized','FontSize',30);
box('on');
semilogy(datasize,IndexedMethod,'-ob',datasize,BaselineMethod,'-rs','LineWidth', 2, 'MarkerSize', 18);
hold on;

xlim(gca,[-20 1050])
ylim(gca,[1 1000])

set(gca,'XTick',0:200:1000,'XMinorTick','off')
set(gca,'YTick',[1 10 100 1000],'YMinorTick','off')

xlabel('Data size (\times10^6)','FontSize',28)
ylabel('Latency (s)','FontSize',28)

h=legend('Sibma', 'Spark SQL');
set(h,'Interpreter','tex','Location','NorthWest','FontSize',27,'Orientation','Horizontal','Box','off');
print -depsc2 osm_rect_datasize_latency
