SpatialHadoop Experiment
---------------

environment: 

+ 10-node cluster
+ hadoop 2.4.1
+ spatialhadoop 2.2

default value:

+ 700m records(25.9GB gaussian data)
+ range: 0.01%
+ knn: k = 10
+ 20 processes

| | latency(s) | throughput(Jobs/min) |
|:--:|:---:|:---:|
|knn| 40.103 | 28.282 |
|range| 87.065 | 10.914 |

index creating time: 1926.250 (s)

