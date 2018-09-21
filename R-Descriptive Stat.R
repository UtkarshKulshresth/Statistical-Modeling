# Utkarsh Kulshrestha
# kuls.utkarsh1205@gmail.com

data1=read.csv(file.choose(), header=TRUE)
data1
summary(data1)
Income=data1$Income
House=data1$House
Amount=data1$Amount
Amount1=Amount/100
boxplot(Income, Amount1, main='Comparative Position of Income and Amount', names=c('Income', 'Amount'))
Box=boxplot(Income, Amount1, main='Comparative Position of Income and Amount', names=c('Income', 'Amount'), ylab='Value')
hist(Income, xlab='Income Class', ylab='Frequency')
hist(Income, breaks=5, xlab='Income Class', ylab='Frequency', col="Red")
sd(Income) 
plot(Income, Amount1, main='Scatter Plot of Income and Amount')
