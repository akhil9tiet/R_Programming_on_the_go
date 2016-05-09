###3. Ranking hospotals by outcome in a state
#3  Ranking hospitals by outcome in a state
#Write a function called rankhospitalthat 
#takes three arguments:  the 2-character abbreviated 
#name of a state,an outcome and the 
#ranking of a hospital in that state for that outcome
#The function reads theoutcome-of-care-measures.csv
#le and returns a character vector with the name
#of the hospital that has the ranking speci ed by the
#num argument.
setwd("C:/Users/akhgupta/Desktop/Data_Science_Coursera/R_programming/week4/assignment_Data")
data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")

rankhospital<-function(state,outcome,num){
  #check if the state and outcomes are valid
  states <- data[ , 7]
  outcomes <- c("heart attack", "heart failure", "pneumonia")
  if ((state %in% states) == FALSE) {
    stop(print("invalid state"))
  }
  else if ((outcome %in% outcomes) == FALSE) {
    stop(print("invalid outcome"))
  }
  
  #get the subset of the data with the desired state
  new_data <- subset(data, State == state)
  
  #get the desired outcome column from the data file
  if (outcome == "heart attack") {
    outcome_column <- 11
  }
  else if (outcome == "heart failure") {
    outcome_column <- 17
  }
  else {
    outcome_column <- 23
  }
  
  #if num is greater that the number of hospitals in the desired state,
  # return NA
  if (is.numeric(num) == TRUE) {
    if (length(data[,2]) < num) {
      return(NA)
    }
  }
  #get rid of the NA's in the desired outcome column
  
  new_data[, outcome_column] <- as.numeric(new_data[,outcome_column])
  bad <- is.na(new_data[, outcome_column])
  desired_data <- new_data[!bad, ]
  
  #arrange the modified dataframe in ascending order of the outcome values
  outcome_column_name <- names(desired_data)[outcome_column]#gives the heading of the desired column
  hospital_column_name <- names(desired_data)[2]#gives heading of the secon column which is hospital name
  index <- with(desired_data, order(desired_data[outcome_column_name], desired_data[hospital_column_name]))
  ordered_desired_data <- desired_data[index, ]
  
  #if nume is either "best" or "worst", then interpret it to the
  #corresponding numerical value
  if (is.character(num) == TRUE) {
    if (num == "best") {
      num = 1
    }
    else if (num == "worst") {
      num = length(ordered_desired_data[, outcome_column])
    }
  }
  #return the hospital name with the outcome ranking of num
  ordered_desired_data[num, 2]
  
}
