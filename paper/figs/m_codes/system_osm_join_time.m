% operation_name = {'BoxRange', 'CircleRange', 'KNN', 'Index Creating time', 'DistanceJoin', 'KNNJoin'};
operation_name = {'DistanceJoin'; 'kNNJoin'};
legend_name = {'Simba', 'GeoSpark'};
legend_name2 = {'SpatialSpark', 'SpatialHadoop'};
legend_name3 = {'Hadoop GIS', 'VKJHadoop'};

%executing_time = [3.20360 2.08237 0; 0 5.57622 0.75818];
executing_time = [3.471 4.439 5.339 19.5053 89.545 0;  1.264 0 0 0 0 9.294];

mycolor=[0 0 0;0.2 0.2 0.2; 0.4 0.4 0.4; 0.6 0.6 0.6; 0.8 0.8 0.8 ;1 1 1];
colormap(mycolor)

b = bar(executing_time.*60);
%title 'Executing time Graph'
set(gca, 'XTickLabel', operation_name)
set(gca, 'Visible', 'on', 'Units', 'normalized')
set(gca, 'Units', 'normalized', 'FontSize', 25)
set(gca, 'YTick', [1 10 100 1000 10000 100000], 'YMinorTick', 'off', 'YMinorTick','off')
set(gca,'yscale','log')
ylim(gca, [10 100000])

text(1.265, 20, '\times', 'FontSize', 53, 'Color', 'r')
text(1.73, 20, '\times', 'FontSize', 53, 'Color', 'r')
text(1.865, 20, '\times', 'FontSize', 53, 'Color', 'r')
text(2.00, 20, '\times', 'FontSize', 53, 'Color', 'r')
text(2.135, 20, '\times', 'FontSize', 53, 'Color', 'r')

h = legend(legend_name);
set(h,'Interpreter','tex','Location','NorthWest','FontSize',27,'Orientation','Horizontal','Box','off' );
set(gca, 'YMinorTick', 'off');

%xlabel('Operation Name', 'FontSize', 20);
ylabel('Running time (s)', 'FontSize', 30);

%clear bar

ax2=axes('Position',[0.137 0.753 0.85 .1]);
set(ax2,'Units','normalized','Visible', 'off');
hold on
t1=[-1 -1];

b1 = bar(1, -1, 'parent', ax2, 'facecolor', [0.4  0.4  0.4], 'Visible', 'off');
b2 = bar(2, -1, 'parent', ax2, 'facecolor', [0.6  0.6  0.6], 'Visible', 'off');
%b3 = bar(3, -1, 'parent', ax2, 'facecolor', [1 1 1], 'Visible', 'off');
% set(gca, 'Visible', 'off');
%colormap(ax2, newcolor);

h1=legend(ax2, [b1, b2], legend_name2);
set(h1,'Interpreter','tex','Location','NorthWest','FontSize',27,'Orientation','Horizontal','Box','off' );

ax3=axes('Position',[0.137 0.68 0.85 .1]);
set(ax3,'Units','normalized','Visible', 'off');
hold on

b3 = bar(3, -1, 'parent', ax3, 'facecolor', [0.8 0.8 0.8], 'Visible', 'off');
b4 = bar(4, -1, 'parent', ax3, 'facecolor', [1 1 1], 'Visible', 'off');
% set(gca, 'Visible', 'off');
%colormap(ax2, newcolor);

h2=legend(ax3, [b3, b4], legend_name3);
set(h2,'Interpreter','tex','Location','NorthWest','FontSize',27,'Orientation','Horizontal','Box','off' );


print -depsc2 osm_join_time