|Operations| SparkSpatial | SpatialHadoop | Pigeon | SpatialSpark | Geomesa|
|:--------:|:------------:|:-------------:|:------:|:------------:|:------:|
|RectRange | √ | √ | √ | √ | √ |
|CircleRange| √ | x | x | √ | x |
|knn| √ | √ | x | **x** | √ | 
|distanceJoin| √ | x | **x** | √ | x |
|KNNJoin| √ | x | x | x | x |
|High Dim |√ | x | x | x | x |
|index| √ | √ | x | **√** | √ |

**NOTE** 

+  [SpatialSpark](https://github.com/syoummer/SpatialSpark) supports index operation in dataset, range and circleRange can be optimized by index operation
+  Pigeon is a language layer above MapReduce framework, range is executed by linear scan.
