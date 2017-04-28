% Create some data
dim = [2 3 4 5 6];
% dim = [2 3 4 5 6 7];

% gaussian-500m
% BaselineMethod = [8.0259 7.0419 6.1380 5.7119 4.7756];
% IndexedMethod = [109.6491 195.3914 182.2478 158.2320 190.8409];

% gaussian-700m
BaselineMethod = [5.6427 5.3652 4.6049 3.7095 2.8403];
IndexedMethod = [76.3639 187.1094 179.0265 156.0866 135.3540];

% gdelt-75m
% BaselineMethod = [46.7115 41.4330 36.9490 30.1644 19.8831 17.2053];
% IndexedMethod = [108.8613 166.5815 146.3193 110.0526 74.7684 129.5521];

set(gca,'Visible','on','Units','normalized');
set(gca,'Units','normalized','FontSize',30);
box('on');
semilogy(dim,IndexedMethod,'-ob',dim,BaselineMethod,'-rs','LineWidth', 2, 'MarkerSize', 18);
hold on;

xlim(gca,[1.75 6.25])
ylim(gca,[1 1000])

set(gca,'XTick',2:1:7,'XMinorTick','off')
set(gca,'YTick',[1 10 100 1000],'YMinorTick','off')

xlabel('Dimension','FontSize',28)
ylabel('Throughput (jobs/min)','FontSize',28)

h=legend('Simba', 'Spark SQL');
set(h,'Interpreter','tex','Location','NorthWest','FontSize',27,'Orientation','Horizontal','Box','off');

print -depsc2 gaussian700m_rect_dimension_throughput
% print -depsc2 gdelt_rect_dimension_throughput