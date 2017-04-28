SpatialSpark Experiment
----------------

###  Base Query 
**Default value** :  
+ size: 700m gaussian data
+ query area:  0.01%
+ index: STR   32 x 32 x 0.001   (v: 32, h:32, sampleRate: 0.001)

**result** :

index creating time:  2074.827 s

| | latency(s) | throughput(Jobs/min) |
|:--:|:---:|:---:|
|range| 57.140 | 14.255 |
|circleRange| 53.897 | 14.842 |


### distance join

**default value** :

+ size: 3m x 3m
+ circle area: 0.00005 %  (from Liang)
+ r: 1034.1007 (from Liang)

partition: STR(10: 10: 0.03)

**result** :
76.984 (s)

