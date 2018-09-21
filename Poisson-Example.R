# Utkarsh Kulshrestha
# kuls.utkarsh1205@gmail.com


#If on an average, 6 customers arrive every two minutes at a bank during
#the busy hours of working, 

#a) what is the probability that exactly four customers arrive in a given minute? 
#b) What is the probability that more than three customers will arrive in a given minute?


Probability4=dpois(4, lambda=3)
Probability4
Probabilitymorethan3=ppois(3, lambda=3, lower=FALSE)
Probabilitymorethan3
