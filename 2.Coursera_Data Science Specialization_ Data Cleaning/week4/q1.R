'''
The American Community Survey distributes downloadable data about United States communities. Download the 2006 microdata survey about housing for the state of Idaho using download.file() from here:

https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv

and load the data into R. The code book, describing the variable names is here:

https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf

Apply strsplit() to split all the names of the data frame on the characters "wgtp". What is the value of the 123 element of the resulting list?
'''

fileurl1 = 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv'
dst1 = "C:/Users/akhgupta/Desktop/Data_Science_Coursera/R_programming/2.Coursera_Data Science Specialization_ Data Cleaning/week4/q1dataset.csv"
download.file(fileurl1, dst1, method = 'curl')
data1 = read.csv(dst1)
strsplit(names(data1),"wgtp")[123]

