# Utkarsh Kulshrestha
# kuls.utkarsh1205@gmail.com


library(datasets)
head(airquality)


#Five Number Summary
summary(airquality$Wind)

#WhiskerPlots
boxplot(airquality$Wind~airquality$Month,col='purple')

hist(airquality$Wind,col='gold')
rug(airquality$Wind)#(Optional)plots the point below in a histogram


######################################################################################################

#load the library
library(mlbench)
# load the dataset
data(PimaIndiansDiabetes)
# display first 20 rows of data
head(PimaIndiansDiabetes, n=20)


# load the libraries
library(mlbench)
# load the dataset
data(PimaIndiansDiabetes)
# display the dimensions of the dataset
dim(PimaIndiansDiabetes)


library(mlbench)
# load dataset
data(BostonHousing)
# list types for each attribute
sapply(BostonHousing, class)



library(mlbench)
# load the dataset
data(PimaIndiansDiabetes)
# distribution of class variable
y <- PimaIndiansDiabetes$diabetes
cbind(freq=table(y), percentage=prop.table(table(y))*100)





#Load the iris dataset
data(iris)
# summarize the dataset
summary(iris)
library(mlbench)
# load the dataset
data(PimaIndiansDiabetes)
# calculate standard deviation for all attributes
sapply(PimaIndiansDiabetes[,1:8], sd)


library(mlbench)
library(e1071)
# load the dataset
data(PimaIndiansDiabetes)
# calculate skewness for each variable
skew <- apply(PimaIndiansDiabetes[,1:8], 2, skewness)
# display skewness, larger/smaller deviations from 0 show more skew
print(skew)


# load the libraries
library(mlbench)
# load the dataset
data(PimaIndiansDiabetes)
# calculate a correlation matrix for numeric variables
correlations <- cor(PimaIndiansDiabetes[,1:8])
# display the correlation matrix
print(correlations)