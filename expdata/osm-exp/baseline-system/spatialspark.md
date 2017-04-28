SpatialSpark Experiment
----------------

###  base query 
**default value** :  
+ size: 500m osm data
+ query area:  0.01%
+ index: STR   32 x 32 x 0.001   (v: 32, h:32, sampleRate: 0.001)

**result** :

index creating time:  1866.413 s

| | latency(s) | throughput(Jobs/min) |
|:--:|:---:|:---:|
|range| 59.1421 | 12.4610 |
|circleRange| 45.3262 | 14.1836 |


### distance join

**default value** :

+ size: 3m x 3m
+ circle area: 0.00005 %  (from Liang)
+ r: 0.04910 (from Liang)

partition: STR(32: 32: 0.01)

**result** :
320.360 s

