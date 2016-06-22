Question 4
#How many characters are in the 10th, 20th, 30th and 100th lines of HTML from this page:
#http://biostat.jhsph.edu/~jleek/contact.html
#(Hint: the nchar() function in R may be helpful)

hurl <- "http://biostat.jhsph.edu/~jleek/contact.html"
con <- url(hurl)
htmlCode <- readLines(con)
close(con)
sapply(htmlCode[c(10, 20, 30, 100)], nchar)
#45 31 7 25

