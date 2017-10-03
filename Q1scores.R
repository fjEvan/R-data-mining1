# 20170929  Jiao Feng (Evan)  
# Data Mining Assignment 1  Q1 online scores analysis

setwd("~/fall2017/data-mining/170928HW1")  # set current working directory
# read raw data into data frame "scores"
scores <- read.table("data.online.scores.txt", header = FALSE, sep = "\t", stringsAsFactors = FALSE)

View(scores)
attach(scores)
options(digits = 8) 

summary(V2)  # now we have max, min, first quartile Q1, median, third quartile Q3, mean
# Min.    1st Qu.  Median    Mean    3rd Qu.    Max. 
# 37.000  68.000   77.000   76.715   87.000   100.000

# calculate the mode
V2 <- scores[,2,drop=FALSE]
temp <- table(as.vector(V2))
names(temp)[temp == max(temp)]
# the mode is: "77" "83"

# calculate the Empirical Variance
var(V2)  # the Empirical Variance is: 173.27905


