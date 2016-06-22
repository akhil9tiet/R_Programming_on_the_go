library(XML)
url<-"https://scholar.google.co.in/citations?user=HI-I6C0AAAAJ&hl=en&oi=ao"
html<-htmlTreeParse(url, useInternalNodes=T)
xpathSApply(html, "//title", xmlValue)

