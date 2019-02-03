s <-read.csv("samplesuperstore.csv",,stringsAsFactors = FALSE)
str(s)
library(randomForest)
library(caret)
library(e1071)
s_train <- s[1:65,]

s_test <- s[66:9994,]

str(s_train)
str(s_test)

set.seed(2000)
trControl <- trainControl(method = "cv",
                          number = 10,
    
                      search = "grid")
