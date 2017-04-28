% operation_name = {'BoxRange', 'CircleRange', 'KNN', 'Index Creating time', 'DistanceJoin', 'KNNJoin'};
operation_name = {'Range';  'kNN'; 'CircleRange'};
legend_name = {'Simba', 'GeoSpark'};
legend_name2 = {'SpatialSpark', 'SpatialHadoop'};
legend_name3 = {'Hadoop GIS'};

throughput = [49.4242 0.864133, 12.4610 5.77 6.299245; 260.4121 0.894805 0 5.77 0];
latency = [11.8833 59.1421 131.737 123.76495; 2.5505  0 131.737 0];

mycolor=[0 0 0;0.2 0.2 0.2; 0.4 0.4 0.4; 0.6 0.6 0.6; 0.8 0.8 0.8 ;1 1 1];
colormap(mycolor)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% throughput
bar(throughput(1:2, :), 'BaseValue', 0.1);
set(gca, 'XTickLabel', operation_name)
set(gca,'yscale','log')
ylim(gca, [0.1, 5000])
set(gca, 'YTick', [0.1, 1, 10, 100, 1000, 10000])

h = legend(legend_name);
set(h,'Interpreter','tex','Location','NorthWest','FontSize',27,'Orientation','Horizontal','Box','off' );

% Create text
text('FontSize',60,'String','\times',...
    'Position',[1.92 0.23],...
    'Color',[1 0 0]);

% Create text
text('FontSize',60,'String','\times',...
    'Position',[2.23 0.23],...
    'Color',[1 0 0]);

ylabel('Throughput (jobs/min)', 'FontSize', 30);
set(gca, 'Units', 'normalized', 'FontSize', 25, 'YMinorTick','off')

newcolor = [0.8095  0.8095  0.8095; 1 1 1];

%set(gca)

ax2=axes('Position',[0.155 0.753 0.85 .1]);
set(ax2,'Units','normalized','Visible', 'off');
hold on
t1=[-1 -1];

b1 = bar(1, -1, 'parent', ax2, 'facecolor', [0.4  0.4  0.4], 'Visible', 'off');
b2 = bar(2, -1, 'parent', ax2, 'facecolor', [0.6, 0.6, 0.6], 'Visible', 'off');
% set(gca, 'Visible', 'off');
%colormap(ax2, newcolor);

h1=legend(ax2, [b1, b2], legend_name2);
set(h1,'Interpreter','tex','Location','NorthWest','FontSize',27,'Orientation','Horizontal','Box','off' );

ax3=axes('Position',[0.155 0.68 0.85 .1]);
set(ax3,'Units','normalized','Visible', 'off');
hold on

b3 = bar(3, -1, 'parent', ax3, 'facecolor', [0.8 0.8 0.8], 'Visible', 'off');
% b4 = bar(4, -1, 'parent', ax3, 'facecolor', [1 1 1], 'Visible', 'off');
% set(gca, 'Visible', 'off');
%colormap(ax2, newcolor);

h2=legend(ax3, b3, legend_name3);
set(h2,'Interpreter','tex','Location','NorthWest','FontSize',27,'Orientation','Horizontal','Box','off' );


print -depsc2 osm_throughput_2

