# SVM (Support vector machine) with R and Kaggle data
# Aim: predict the classes of Iris through the dimensions of the flowers (the sepal and the petal)
# Data: Iris.csv

# Library needed
library("e1071")

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
SVM_model <- svm(Species~., data=train, type='C-classification')

# Make prediction
# Only two flowers are classified in wrong species
prediction <- predict(SVM_model, newdata=test)
solution <- data.frame(Id = Iris[-train_ind, 1], test, 
                       Species_True = Iris[-train_ind, 5], 
                       Species_Find = prediction)
which(solution$Species_True != solution$Species_Find)
write.csv(solution, file = 'SVMSolution.csv', row.names = F)
