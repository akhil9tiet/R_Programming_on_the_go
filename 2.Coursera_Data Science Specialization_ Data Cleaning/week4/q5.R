
#You can use the quantmod (http://www.quantmod.com/) package to get historical stock prices for publicly traded companies on the NASDAQ and NYSE. Use the following code to download data on Amazon's stock price and get the times the data was sampled.

#How many values were collected in 2012? How many values were collected on Mondays in 2012?


install.packages('quantmod')
library(quantmod)

# load Amazon stock data
amzn = getSymbols("AMZN",auto.assign=FALSE)

# extract the index
sampleTimes = index(amzn) 

# create logical for year 2012
year2012 <- grepl('2012-*', sampleTimes)

# count 2012 observations (i.e. true)
table(year2012)

# subset based on 2012
sampleTimes2012 <- subset(sampleTimes, year2012)

# convert to day of week
day <- format(sampleTimes2012, '%A')

# count each day
table(day)
