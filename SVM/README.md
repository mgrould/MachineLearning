# README: SVM

### Marion Grould
8 November 2017

## Abstract
Application of the [SVM method](https://en.wikipedia.org/wiki/Support_vector_machine) to the Iris dataset of Kaggle. The aim of this project is to predict the class of different flowers by using their sepal and petal dimensions, and a model built through a training set and the SVM method.

### Description of the Random Forest method
The SVM method is used in [supervised machine learning problems](https://en.wikipedia.org/wiki/Supervised_learning). A support vector machine constructs a hyperplane or set of hyperplanes in a high- or infinite-dimensional space, which can be used for classification, regression, or other tasks like outliers detection. Intuitively, a good separation is achieved by the hyperplane that has the largest distance to the nearest training-data point of any class (so-called functional margin), since in general the larger the margin the lower the generalization error of the classifier.

## Repository
* **Iris.csv**: Dataset downloaded from Kaggle and containing the Iris dimensions (sepal and petal).
* **SVM.R**: Script allowing to both build the predictive model and classify the flowers.
* **SVMSolution.csv**: Classification of the flowers (read the CodeBook for more informations about the variables).
