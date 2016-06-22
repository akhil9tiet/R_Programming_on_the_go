'''
The American Community Survey distributes downloadable data about United States communities. Download the 2006 microdata survey about housing for the state of Idaho using download.file() from here:

https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv

and load the data into R. The code book, describing the variable names is here:

https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf

Create a logical vector that identifies the households on greater than 10 acres who sold more than $10,000 worth of agriculture products. Assign that logical vector to the variable agricultureLogical. Apply the which() function like this to identify the rows of the data frame where the logical vector is TRUE.

which(agricultureLogical)

What are the first 3 values that result?
'''

'''
Soln. looking at the question the rows are identified as ACR(Lot size):code 3[house on more than 10 acres] and AGS(sales of agricultural products):code 6[>10000]
'''
'''library(dplyr)
mydata = read.csv("C:/Users/akhgupta/Desktop/Data_Science_Coursera/R_programming/2.Coursera_Data Science Specialization_ Data Cleaning/week3/q1/American_community_micro_dataset.csv")
filter_data= filter(mydata, ACR=3 & AGS=6)

filter_data''' ##NOT WORKING

fileurl1 = 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv'
dst1 = "C:/Users/akhgupta/Desktop/Data_Science_Coursera/R_programming/2.Coursera_Data Science Specialization_ Data Cleaning/week3/q1/American_community_micro_dataset.csv"
##download.file(fileurl1, dst1, method = 'curl')
data1 = read.csv(dst1)
agricultureLogical = data1$ACR == 3 & data1$AGS == 6
head(which(agricultureLogical), 3)

