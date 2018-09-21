# Utkarsh Kulshrestha
# kuls.utkarsh1205@gmail.com

tyre <- read.csv('/tyre.csv', header = TRUE, sep = ',')
attach(tyre)
is.factor(Brands)
boxplot(Mileage~Brands, main="Fig.-1: Boxplot of Mileage of Four Brands of Tyre", col= rainbow(4))
library(ggplot2)
ggplot(tyre, aes(Brands,Mileage))+geom_boxplot(aes(col=Brands))+labs(title="Boxplot of Mileage of Four Brands of Tyre")
boxplot.stats(Mileage[Brands=="CEAT"])
model1<- aov(Mileage~Brands)
summary(model1)
plot(TukeyHSD(model1, conf.level = 0.99),las=1, col = "red")
library(gplots)
plotmeans(Mileage~Brands, main="Fig.-3: Mean Plot with 95% Confidence Interval", ylab = "Mileage run ('000 miles)", xlab = "Brands of Tyre")
par(mfrow=c(2,2))
plot(model1)
