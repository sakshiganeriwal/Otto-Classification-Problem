# clear environment workspace
rm(list=ls())
# load data
setwd("C:/Users/sakshi/Desktop/project_sem6/data analysis/otto")
train <- read.csv("../otto/train.csv/train.csv")
test <- read.csv("../otto/test.csv/test.csv")
sample_sub <- read.csv("../otto/sampleSubmission.csv")
# remove id column so it doesn't get picked up by the random forest classifier
train2 <- train[,-1]
install.packages('e1071')
test2 <- test[,-1] 
attach(train2) 
attach(test2)
library(e1071)
model <- svm( train2$target~., train2 ) 
res <- predict( model, test2 ) 
submit <- data.frame(id = test$id, target = res) 
write.csv(submit, file = "sub.csv", row.names = FALSE)