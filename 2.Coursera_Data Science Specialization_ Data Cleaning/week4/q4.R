'''
Load the Gross Domestic Product data for the 190 ranked countries in this data set:

https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv

Load the educational data from this data set:

https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv

Match the data based on the country shortcode. Of the countries for which the end of the fiscal year is available, how many end in June?

Original data sources: 
'''

setwd('C:/Users/akhgupta/Desktop/Data_Science_Coursera/R_programming/2.Coursera_Data Science Specialization_ Data Cleaning/week4/')
file.url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv'
file.dest <- 'GDP4.csv'
download.file(file.url, file.dest)
GDP <- read.csv(file.dest, skip=4, nrows=190, header=TRUE)


file.url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv'
file.dest <- 'edu.csv'
download.file(file.url, file.dest)
edu <- read.csv(file.dest, header= TRUE)

# merge the datasets
merged <- merge(GDP, edu, by.x = 'X', by.y = 'CountryCode')

# extract the information
fy.june <- grep('Fiscal year end: June', merged$Special.Notes)
length(fy.june)