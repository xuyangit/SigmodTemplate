datasize = [30 50 70 100 300 500 700 1000];
% gaussian
%IndexedTime = [44.433 69.369 86.649 106.581 306.949 532.84 739.945 1025.358];
% osm
IndexedTime = [50.567 64.794 92.122 138.874 349.588 628.915 1006.760 1483.546];
SH = [1443.167, 1319.871, 1378.127 1410.296 1759.652 2071.457 2503.365 3571.569];
SpatialS = [54.476 82.534 125.747 178.700 812.506 1715.503 2939.753 4321.007];
SATO = [466.030 692.925 910.001 1269.765 3681.246 5979.855 8539.650 18987.821];

% Create a y-axis semilog plot using the semilogy function
% Plot SER data in blue and BER data in red
set(gca,'Visible','off','Units','normalized');
%ax1=axes('Position',[0.142 0.143628620102215 0.85 0.8]);
%ax1=axes('Position',[0.12 0.1 0.85 .8]);
set(gca, 'Units','normalized','FontSize',30);
box('on');

hold off;
plot = semilogy(datasize,IndexedTime,'-ob', datasize,SpatialS,'-xm', datasize,SH,'->', datasize,SATO,'-d', 'LineWidth', 2, 'MarkerSize', 18);
set(plot(3), 'color', [0 2/3 0])
set(plot(4), 'color', [1 2/3 0])
hold on;

xlim([-20 1050])
ylim([10 300000])
set(gca, 'XTick', 0:200:1000, 'XMinorTick', 'off')
set(gca, 'YTick', [1 10 100 1000 10000 100000], 'YMinorTick', 'off')

h=legend('Simba', 'SpatialSpark');
%h2 = legend('SS', 'HGIS');
set(h,'Interpreter','tex','Location','NorthWest','FontSize',27,'Orientation','Horizontal','Box','off' );

xlabel('Data size (\times10^6)','FontSize',28)
ylabel('Index construction time (s)','FontSize',28)

clear plot;

ax2=axes('Position',[0.0070 0.75 0.85 .1]);
set(ax2,'Units','normalized','Visible', 'off');
hold on
t1=[-1];
t2=[-1];
ll1=plot(datasize,SH,'->','LineWidth', 2,'MarkerSize', 18, 'Visible', 'off', 'color', [0 2/3 0]);
ll2=plot(datasize,SATO,'-d','LineWidth', 2,'MarkerSize', 18, 'Visible', 'off', 'color', [1 2/3 0]);
compline=[ll1 ll2];
h1=legend(ax2,compline,'SpatialHadoop', 'Hadoop GIS');
set(h1,'Interpreter','tex','Location','NorthWest','FontSize',27,'Orientation','Horizontal','Box','off', 'Position', [0.28, 0.75, 0.46, 0.11] );
ax3=axes('Position',[-0.108 0.68 0.850 .1]);
set(ax3,'Units','normalized','Visible', 'off');
hold on

print -depsc2 index_time