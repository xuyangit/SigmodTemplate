Hadoop-GIS Experiment
---------------

environment: 

+ 10-node cluster
+ hadoop 2.4.1
+ Hadoop-GIS SATO version

default value:

+ 500m records(32GB)
+ range: 0.01%
+ knn: k = 10
+ 20 processes

index creating time:  5979.855 s

| | latency(s) | throughput(Jobs/min) |
|:--:|:---:|:---:|
|range| 123.76495 | 6.299245 |


### distance join

**default value** :

+ size: 3m x 3m
+ circle area: 0.00005 %  (from Liang)
+ r: 0.04910 (from Liang)

**result** :
1080.32

### Indexing Time
| Data Size | Indexing Time |
|:---:|:---:|
|30m | 466.030 s |
|50m | 692.925 s |
|70m | 910.001 s |
|100m | 1267.765 s |
|300m | 3681.246 s |
|500m | 5979.855 s |
|700m | 8539.650 s |
|1000m | 18987.821 s |
