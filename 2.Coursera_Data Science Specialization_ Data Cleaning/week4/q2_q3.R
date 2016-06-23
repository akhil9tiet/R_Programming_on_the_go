'''
Load the Gross Domestic Product data for the 190 ranked countries in this data set:

https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv

Remove the commas from the GDP numbers in millions of dollars and average them. What is the average?

Original data sources:

http://data.worldbank.org/data-catalog/GDP-ranking-table 
'''
setwd('C:/Users/akhgupta/Desktop/Data_Science_Coursera/R_programming/2.Coursera_Data Science Specialization_ Data Cleaning/week4/')
file.url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv'
file.dest <- 'GDP4.csv'
download.file(file.url, file.dest)

# read the data
GDP <- read.csv(file.dest, skip=4, nrows=190, header=TRUE)

# substitute comma's out
GDPdol <- gsub(",", "", GDP$X.4)

# convert to integer and calculate mean
GDPdol <- as.integer(GDPdol)
mean(GDPdol, na.rm=TRUE)

# attach the GDP data frame
'''
In the data set from Question 2 what is a regular expression that would allow you to count the number of countries whose name begins with "United"? Assume that the variable with the country names in it is named countryNames. How many countries begin with United? 
'''
attach(GDP)
grep("^United",GDP$V4, value= TRUE)
