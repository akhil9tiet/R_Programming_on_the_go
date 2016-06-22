'''
Load the Gross Domestic Product data for the 190 ranked countries in this data set:

https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv

Load the educational data from this data set:

https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv

Match the data based on the country shortcode. How many of the IDs match? Sort the data frame in descending order by GDP rank (so United States is last). What is the 13th country in the resulting data frame?

Original data sources:

http://data.worldbank.org/data-catalog/GDP-ranking-table

http://data.worldbank.org/data-catalog/ed-stats
'''
file.url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv'
file.dest <- 'GDP.csv'
download.file(file.url, file.dest )

# specify the right lines
rowNames <- seq(10,200, 2)

# read the data
gdp <- read.csv('GDP.csv', header=F, skip=5, nrows=190)
View(gdp)

# second data file
file.url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv'
file.dest <- 'GDP2.csv'
download.file(file.url, file.dest )

# read second file
fed <- read.csv('GDP2.csv')
View(fed)

# merge datasets
combined <- merge(gdp, fed, by.x='V1', by.y='CountryCode', sort=TRUE)
View(combined)

# Q3.
# sort the data
combined[with(combined, order(-V2) )]


# Q4.
# OECD
mean(combined[combined$Income.Group=='High income: OECD',]$V2)
# non OECD
mean(combined[combined$Income.Group=='High income: nonOECD',]$V2)

# Q5.
# assign quentile values
quentile <- c(0.2,0.4,0.6,0.8,1)
q <- quantile(combined$V2, quentile)
q1 <- combined$V2 <= 38

xtabs(q1 ~ combined$Income.Group)