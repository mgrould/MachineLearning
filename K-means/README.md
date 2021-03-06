# README: K-means

### Marion Grould
7 November 2017

## Abstract
Application of the [K-means clustering method](https://en.wikipedia.org/wiki/K-means_clustering) to the [Iris dataset of Kaggle](https://www.kaggle.com/uciml/iris). The aim of this project is to classify the flowers by species knowing their sepal and petal dimensions.

### Definition of the K-means method
The K-means method is used in [unsupervised machine learning problems](https://en.wikipedia.org/wiki/Unsupervised_learning). K-means clustering aims to partition N observations into K clusters in which each observation belongs to the cluster with the nearest mean, serving as a prototype of the cluster. This results in a partitioning of the data space into Voronoi cells. More precisely, the function to minimize is the squared Euclidian distance between the N observations and the mean of observations in each cluster. The K inital clusters are generated randomly, for instance if K=3, the dataset is randomly sepatated in 3 initial clusters.

## Repository
* **Iris.csv**: Dataset downloaded from Kaggle and containing the Iris dimensions (sepal and petal).
* **k-means.R**: Script allowing the clustering of the Iris. 
* **KSelection.pdf**: Plot of the total within-cluster sum of squares versius the number of clusters.
