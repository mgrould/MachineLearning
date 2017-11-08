# README: RandomForest

### Marion Grould
8 November 2017

## Abstract
Application of the [Random Forest method](https://en.wikipedia.org/wiki/Random_forest) to the Iris dataset of Kaggle. The aim of this project is to predict the class of different flowers by using their sepal and petal dimensions, and a model built through a training set and the Random Forest method.

### Description of the Random Forest method
The Random Forest method is used in [supervised machine learning problems](https://en.wikipedia.org/wiki/Supervised_learning). This is an ensemble learning method : a large number of [decision trees](https://en.wikipedia.org/wiki/Decision_tree) are built by using subsamples of the dataset. These subsamples can get different sizes and contain similar data (this is the random sampling with replacement). The final decision (class) of one observation corresponds to the majority decision provided by each tree.

## Repository
* **Iris.csv**: Dataset downloaded from Kaggle and containing the Iris dimensions (sepal and petal).
* **RandomForest.R**: Script allowing to both build the predictive model and classify the flowers.
* **RFImportance.pdf**: Plot showing the relative importance of each variable in the classification. 
* **RFSolution.csv**: Classification of the flowers (read the CodeBook for more informations about the variables).
