# Utkarsh Kulshrestha
# kuls.utkarsh1205@gmail.com

#Binomial Distribution
#Example Problem

#A bank issues credit cards to customers under the scheme of Master Card. 
#Based on the past data, the bank has found out that 60% of all accounts pay 
#on time following the bill. If a sample of 7 accounts is selected at random 
#from the current database, construct the Binomial Probability Distribution of
#accounts paying on time. 

success=c(0, 1, 2, 3, 4, 5, 6, 7)
probabilities=dbinom(size=7, prob=0.6, success)
cbind(success,probabilities)
cumulative=pbinom(size=7, success, prob=0.60)
cbind(success, cumulative)
