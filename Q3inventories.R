# 20170930  Jiao Feng (Evan)  
# Data Mining Assignment 1  Q3 library inventories analysis

setwd("~/fall2017/data-mining/170928HW1")  # set current working directory

# read raw data into data frame "scores"
i <- read.table("data.libraries.inventories.txt", header = TRUE, sep = "\t", stringsAsFactors = FALSE, row.names= 1)

attach(i)
b <- t(i)
View(b)

# Jaccard coefficient of Citadel's Maester Library (CML) and Castle Black's library(CBL)
#  = 58 / (120 + 2 + 58)
58 / (120 + 2 + 58)  # Jaccard index = 0.322

install.packages('proxy')  # install package proxy
library('proxy')  # Library of similarity/dissimilarity measures for 'dist()'

c1 <- table(b[,1])  # count the occurrence of the 100 books in CML
c2 <- table(b[,2])  # count the occurrence of the 100 books in CBL
View(c1)
View(c2)
m1 <- merge(b, c1, by.x = "CML", by.y = "Var1")  # map counts and the 100 books in CML
m <- merge(m1, c2, by.x = "CBL", by.y = "Var1")  # map counts and the 100 books in CBL, merge
# Minkowski distance 
dist((rbind(m$Freq.x, m$Freq.y)), method = "manhattan")  # h = 1,  Manhattan distance: 74
dist(rbind(m$Freq.x, m$Freq.y))  # h = 2,  Euclidean distance: 10.392
dist((rbind(m$Freq.x, m$Freq.y)), "maximum")  # h = 3,  Chebyshev distance: 3

# The Cosine similarity between CML and Castle Black's with regard to the feature vector
dist((rbind(m$Freq.x, m$Freq.y)), method="cosine") # the Cosine similarity is: 0.181

install.packages('entropy')  # install package 'entropy' to use the function in the package 
library('entropy')           # to calculate Kullback-Leibler divergence

p1 <- (m$Freq.x / 100)  # calculate the probability in CML
View(p1)
p2 <- (m$Freq.y / 100)  # calculate the probability in CBL
View(p2)

KL.plugin(p1, p2)  # the Kullback-Leibler divergence is: 0.198


