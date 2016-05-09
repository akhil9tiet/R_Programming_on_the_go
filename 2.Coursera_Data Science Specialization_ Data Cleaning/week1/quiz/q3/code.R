##Download the Excel spreadsheet on Natural Gas Aquisition Program here:
  
##  https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx

##Read rows 18-23 and columns 7-15 into R and assign the result to a variable called:
  
##  dat
##What is the value of:
  
##  sum(dat$Zip*dat$Ext,na.rm=T)
##(original data source: http://catalog.data.gov/dataset/natural-gas-acquisition-program)

install.packages("readxl") # CRAN version

setwd("C:/Users/akhgupta/Desktop/Data_Science_Coursera/R_programming/2.Coursera_Data Science Specialization_ Data Cleaning/week1/quiz/q1")
fileurl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
download.file(fileurl, destfile="gov_NGAP.xlsx", method="curl")
colIndex<- 7:15
rowIndex<- 18:23
dat <- read_excel(file="gov_NGAP.xlsx",sheetIndex=1, colIndex=colIndx, rowIndex= rowIndex, header=TRUE)
sum(dat$Zip*dat$Ext,na.rm=T)