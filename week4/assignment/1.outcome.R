
#Plot the 30 day mortality rates for heart attack

setwd("C:/Users/akhgupta/Desktop/Data_Science_Coursera/R_programming/week4/assignment_Data")
data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
outcome[, 11] <- as.numeric(outcome[, 11])
 ## You may get a warning about NAs being introduced; that is okay
hist(outcome[, 11]