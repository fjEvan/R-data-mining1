# 20171001  Jiao Feng (Evan)  
# Data Mining Assignment 1  Q3 library inventories analysis

setwd("~/fall2017/data-mining/170928HW1")  # set current working directory

# read raw data into data frame "ph" (ph: purchase history)
ph <- read.table("purchase.txt", header = TRUE, sep = "\t", stringsAsFactors = FALSE, row.names= 1, fileEncoding="utf-16")

options(digits = 9)  # set precision, preserve 3 decimal places

chisq.test(ph)  # conducting Chi-squared test, the result is: 2450.716



