#Session 2 ??? Introduction to

#Working with R
#Assignment ??? 2

#1. Read multiple JSON files into a directory to convert into a dataset.
#I have files text1, text2, text3 in the directory JSON.
install.packages('jsonlite')
library(jsonlite)
library(dplyr)

ls <- list("/Users/rakesh/Desktop/vik/Assignment/text1.json",
           "/Users/rakesh/Desktop/vik/Assignment/text2.json",
           "/Users/rakesh/Desktop/vik/Assignment/text3.json")

(i in ls){
  z <- data.frame()
  a <- read_json(i, simplifyVector = TRUE)
  z <- cbind(z,a)
}
View(a)





#2. Parse the following JSON into a data frame.
js<-'{
"name": null, "release_date_local": null, "title": "3 (2011)",
"opening_weekend_take": 1234, "year": 2011,
"release_date_wide": "2011-09-16", "gross": 59954
}'

mydf <- fromJSON(json, simplifyVector = TRUE, simplifyDataFrame = simplifyVector)
mydf

#3. Write a script for Variable Binning using R.

bin <- c(1:100)
bin
binning <- function(x)
{
  for(i in c(1:100))
  {
    ifelse(i <= 25, paste(i,"group1"),
           ifelse(i <= 50, paste(i,"group2"), 
                  ifelse(i <= 75, paste(i,"group3"),
                         paste(i,"group4"))))
    break
  }
}

binning(bin)
