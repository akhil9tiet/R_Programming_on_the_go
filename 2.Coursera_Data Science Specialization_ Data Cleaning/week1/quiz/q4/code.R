##Read the XML data on Baltimore restaurants from here:
  
##  https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml

##How many restaurants have zipcode 21231?
library(XML)

fileUrl2 <- "http://d396qusza40orc.cloudfront.net/getdata/data/restaurants.xml"
doc <- xmlTreeParse(file=fileUrl2,useInternal=TRUE)
rootNode <- xmlRoot(doc)
xmlName(rootNode)
names(rootNode)
rootNode[[1]][[1]]
zipcode <- xpathSApply(rootNode,"//zipcode",xmlValue)
length(zipcode[zipcode==21231])