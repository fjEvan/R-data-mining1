# 20170930  Jiao Feng (Evan) 
# Data Mining Assignment 1 Q2 online scores analysis

# do z-score normalization, put into data frame z
z <- scale(V2)   
View(z)
summary(z)  # get basic statistics about z  (e.g. mean = 0)
var(z)      # empirical variance after normalization = 1
var(V2)     # empirical variance before normalization = 173.279

# given a score of 90, corresponding score after normalization
(90 - 76.715) / (173.27905^0.5)  # = 1.009226 

# Pearson’s correlation coefficient between midterm scores and final scores
cor(V2,V3,method = "pearson") # the correlation coefficient is: 0.544

# Covariance between midterm scores and final scores
cov(V2,V3)  # the covariance is: 78.254

