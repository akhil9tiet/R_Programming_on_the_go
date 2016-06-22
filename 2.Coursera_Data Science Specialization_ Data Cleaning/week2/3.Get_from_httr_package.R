#Get from httr package

library(httr); 
html2= GET("https://scholar.google.co.in/citations?user=HI-I6C0AAAAJ&hl=en&oi=ao")
content2= content(html2, as="text")
parsedHTML = htmlParse(content2, astext= TRUE)
xpathSApply(parsedHTML, "//title", xmlValue)

