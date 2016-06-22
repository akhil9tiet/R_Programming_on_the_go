'''
Using the jpeg package read in the following picture of your instructor into R

https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg

Use the parameter native=TRUE. What are the 30th and 80th quantiles of the resulting data? (some Linux systems may produce an answer 638 different for the 30th quantile)

'''

# write the file url and file destination to an object
file.url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg'
file.dest <- 'jeff.jpg'

# download from the URL
download.file(file.url, file.dest, mode='wb' )

# load package
library(jpeg)

# load the data
picture <- readJPEG('jeff.jpg', native=TRUE)

# get the quantile info
quantile(picture, probs = c(0.3, 0.8) )

