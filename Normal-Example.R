# Utkarsh Kulshrestha
# kuls.utkarsh1205@gmail.com



The mean weight of a morning breakfast cereal pack is 0.295 kg 
with a standard deviation of 0.025 kg. 
The random variable weight of the pack follows a normal distribution. 

What is the probability that the pack weighs less than 0.280 kg?
What is the probability that the pack weighs more than 0.350 kg?
What is the probability that the pack weighs between 0.260 kg to 0.340 kg? 
What weight was exeeded by 90% of the packs produced?


Mu=0.295
Sigma=0.025
Probabiltylessthan0.280=pnorm(0.280, Mu, Sigma)
Probabiltylessthan0.280
Probabiltymorethan0.350=pnorm(0.350, Mu, Sigma, lower=FALSE)
Probabiltymorethan0.350
Probabilitybeween0.260and0.340=pnorm(0.340, Mu, Sigma)-pnorm(0.260, Mu, Sigma)
Probabilitybeween0.260and0.340
Weightexceededby0.90=qnorm(0.90, Mu, Sigma, lower=FALSE)
Weightexceededby0.90
Prob=pnorm(0.263, Mu, Sigma)
Prob
