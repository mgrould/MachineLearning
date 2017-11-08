# Random Forest with R and Kaggle data
# Aim: predict the classes of Iris through the dimensions of the flowers (the sepal and the petal)
# Data: Iris.csv
# Note: http://perso.ens-lyon.fr/lise.vaudor/classification-par-forets-aleatoires/

# Library needed
library(randomForest)

# Load the data
Iris <- read.csv("Iris.csv")

# Remove the Id column from Iris
Iris$Id <- NULL

# Split the dataset in training and testing sets
set.seed(123)
smp_size <- floor(0.75 * nrow(Iris))
train_ind <- sample(seq_len(nrow(Iris)), size = smp_size)
train <- Iris[train_ind, ]
test <- Iris[-train_ind, ]

# Remove the Species column from the testing set
test$Species <- NULL

# Build the model
RF_model <- randomForest(Species~., train)

# Plot the relative importance of each variable used for the classification
# We note that the petal dimensions are more important than the sepal ones
varImpPlot(RF_model)

# Make prediction
prediction <- predict(RF_model, test)
solution <- data.frame(Id = Iris[-train_ind, 1], test, 
                       Species_True = Iris[-train_ind, 5], 
                       Species_Find = prediction)
write.csv(solution, file = 'RFSolution.csv', row.names = F)
