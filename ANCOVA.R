# Utkarsh Kulshrestha
# kuls.utkarsh1205@gmail.com


#Load the data for the studies of trees
orange.df = Orange

#Convert the tree column into categorical variables
orange.df$Tree = factor(as.numeric(orange.df$Tree))

#Put up a linear regression model on data 
orange.mod1 = lm(circumference ~ age, data = orange.df)
summary(orange.mod1)

#Put up a regession model on continous & categorical data
orange.mod2 = lm(circumference ~ age + Tree, data = orange.df)
summary(orange.mod2)

#Study the effect of categorical variables
anova(orange.mod1, orange.mod2)
