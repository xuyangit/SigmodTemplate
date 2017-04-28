Voronoi-Hadoop Experiment
--------------------
Reference: [paper](http://www.comp.nus.edu.sg/~ooibc/vldb12knnjoin.pdf), [code](http://www.comp.nus.edu.sg/~dbsystem/code/knnmapjoin.rar).

Experiments on dimensions.

#### default value
+ 10 nn
+ 30000 tuples/partition

#### exp1: 3m dataset
+ data: 3m x 3m (407MB)
+ 1600 pivot
+ 16000 sample points

vary dimension

**result**:

|dimension| 2 | 3 | 4 | 5 |
|:--------:|:------------:|:-------------:|:------:|:------------:|
|3m x 3m | 515.810s | 409.671s | 534.519s | 589.453s | 

NOTE:
> + even dimension: (longitude, latitude) * k
> 
> + odd dimension: date , (longitude, latitude) * k
> 
> + all data is normalized
> 

#### exp2: 10m dataset
+ data: 10m x 10m (1.36GB)
+ 5344 pivot
+ 53440 sample points

vary dimension

**result**:

|dimension| 2 | 3 | 4 | 5 |
|:--------:|:------------:|:-------------:|:------:|:------------:|
|10m x 10m | 3101.620s | 2792.529s | 3572.553s | 4046.586s | 

NOTE: 
> + even dimension: (longitude, latitude) * k
> 
> + odd dimension: (longitude, latitude) * k, longitude
> 
> + all data is normalized
> 



