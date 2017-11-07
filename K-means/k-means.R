# K-means with R and Kaggle data
# Aim: find 3 species of Iris through the dimensions of the flowers (the sepal and the petal)
# Data: Iris.csv

# Library needed
library(ggplot2) # Data visualization

# Load the data
Iris <- read.csv("Iris.csv")

# Remove the Species and Id columns from Iris
Iris$Species <- NULL
Iris$Id <- NULL

# Centered and reduced the data
NewIris <- scale(Iris)

# K-mean clustering by using several K
set.seed(123)
K_kmeans <- function(K){
    res <- kmeans(NewIris, K)
    return(res$tot.withinss)
}
Kmin <- 1
Kmax <- 15
Kres <- sapply(Kmin:Kmax, K_kmeans)

# Plot the total within-cluster sum of squares per K (cluster)
plot(Kmin:Kmax, Kres, xlab="Number of clusters (K)", ylab="Total within-cluster sum of squares")

# Select the appropriate number of clusters by using the Elbow method: 
# -> the K is selected when the number of clusters does not improve much better the model
# K = 3 in our case
points(3, Kres[3], pch=16)

