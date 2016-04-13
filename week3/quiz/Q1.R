#Take a look at the 'iris' dataset that comes with R. The data can be loaded with the code:
#  library(datasets)
#data(iris)
#A description of the dataset can be found by running
#?iris
#There will be an object called 'iris' in your workspace. 
#In this dataset, what is the mean of 'Sepal.Length' for the species virginica?
#Please round your answer to the nearest whole number.

library(datasets)
data(iris)
virginica<-subset(iris,Species=='virginica')
sl<-data.frame(virginica$Sepal.Length)
summary(sl)

