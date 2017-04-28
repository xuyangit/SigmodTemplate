SpatialHadoop Experiment
---------------

environment: 

+ 10-node cluster
+ hadoop 2.4.1
+ spatialhadoop 2.2

default value:

+ 500m records(32GB)
+ range: 0.01%
+ knn: k = 10
+ 20 processes

| | latency(s) | throughput(Jobs/min) |
|:--:|:---:|:---:|
|knn| 131.737 | 5.77 |
|range| 40.693 | 27.517 |

index creating time: 1980.715 (s)

