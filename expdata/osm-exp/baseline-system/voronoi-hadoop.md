Voronoi-Hadoop Experiment
--------------------
Reference: [paper](http://www.comp.nus.edu.sg/~ooibc/vldb12knnjoin.pdf), [code](http://www.comp.nus.edu.sg/~dbsystem/code/knnmapjoin.rar).

#### default value
+ data: 3m x 3m (191mb)
+ 10 nn

exp1: 

partition size: 30000 tuple,  without geoGrouping

**result** : 544.932 (s)

exp2: 

4000 pivots, geoGrouping to 36 partition

**result** : 557.622 (s)
