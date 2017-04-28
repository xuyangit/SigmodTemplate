Voronoi-Hadoop Experiment
--------------------
Reference: [paper](http://www.comp.nus.edu.sg/~ooibc/vldb12knnjoin.pdf), [code](http://www.comp.nus.edu.sg/~dbsystem/code/knnmapjoin.rar).

#### default value
+ data: 3m x 3m (103mb)
+ 10 nn
+ 30000 tuples/partition
+ 1600 pivot
+ 16000 sample points

**result**:

|dimension| 2 | 3 | 4 | 5 |
|:--------:|:------------:|:-------------:|:------:|:------------:|
|3m x 3m | 362.591s | 445.201s | **2343.267**s | **2893.539**s | 

NOTE:
> + 4 dimension and 5 dimension experiment, there is one reducer failure, no output created
>  and the program ends, the experiments has been run serveral times, all fail on the last stage.
>  The similar result got in gdelt odd dimension of voronoi-spark.
