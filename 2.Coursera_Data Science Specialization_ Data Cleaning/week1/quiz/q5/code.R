"The American Community Survey distributes downloadable data about United States communities. Download the 2006 microdata survey about housing for the state of Idaho using download.file() from here:

https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv

using the fread() command load the data into an R object DT Which of the following is the fastest way to calculate the average value of the variable pwgtp15 broken down by sex using the data.table package?

DT[,mean(pwgtp15),by=SEX]
tapply(DT\(pwgtp15,DT\)SEX,mean)
mean(DT\(pwgtp15,by=DT\)SEX)
rowMeans(DT)[DT$SEX==1]; rowMeans(DT)[DT$SEX==2]
sapply(split(DT\(pwgtp15,DT\)SEX),mean)
mean(DT[DT$SEX==1,]\(pwgtp15); mean(DT[DT\)SEX==2,]$pwgtp15)"

#Download data which is in excel from the website
setwd("C:/Users/akhgupta/Desktop/Data_Science_Coursera/R_programming/2.Coursera_Data Science Specialization_ Data Cleaning/week1/quiz/q1")
fileUrl1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
download.file(url=fileUrl1, destfile="fsspid.csv", mode="w", method="curl")
dateDownloaded <- date()
print(dateDownloaded)

library(data.table)
DT <- fread(input="fsspid.csv", sep=",")
system.time(DT[,mean(pwgtp15),by=SEX])

system.time(tapply(DT$pwgtp15,DT$SEX,mean))

system.time(mean(DT$pwgtp15,by=DT$SEX))

#system.time(rowMeans(DT)[DT$SEX==1])
#system.time(rowMeans(DT)[DT$SEX==2])
system.time(sapply(split(DT$pwgtp15,DT$SEX),mean))

system.time(mean(DT[DT$SEX==1,]$pwgtp15))  

system.time(mean(DT[DT$SEX==2,]$pwgtp15))