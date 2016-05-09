##The American Community Survey distributes downloadable data about United States communities. Download the 2006 microdata survey about housing for the state of Idaho using download.file() from here:

##https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv

##and load the data into R. The code book, describing the variable names is here:
  
##  https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf

##How many properties are worth $1,000,000 or more?

setwd("C:/Users/akhgupta/Desktop/Data_Science_Coursera/R_programming/2.Coursera_Data Science Specialization_ Data Cleaning/week1/quiz/q1")
fileurl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(fileurl, destfile="idaho_housing.csv", method="curl")
list.files(".")
idaho_housing<-read.csv(file = ".//idaho_housing.csv")
class(idaho_housing)

##property value is VAL column

#Code book says VAL with 24 represents any house more than $1000000. 
#Following piece of code is trying to get count on house price >$1000000 whose value is not NA
length(idaho_housing$VAL[!is.na(idaho_housing$VAL) & idaho_housing$VAL==24])