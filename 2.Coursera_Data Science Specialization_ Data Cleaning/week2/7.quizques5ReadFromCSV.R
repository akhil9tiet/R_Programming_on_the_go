#Question 5
#Read this data set into R and report the sum of the numbers in the fourth column.
#https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for
#Original source of the data: http://www.cpc.ncep.noaa.gov/data/indices/wksst8110.for
#(Hint this is a fixed width file format)

data <- read.csv("getdata_wksst8110.for", header=T)
head(data)
dim(data)
file_name <- "getdata_wksst8110.for"
df <- read.fwf(file=file_name,widths=c(-1,9,-5,4,4,-5,4,4,-5,4,4,-5,4,4), skip=4)
head(df)
sum(df[, 4])