# clear environment workspace
rm(list=ls())
# load data
setwd("C:/Users/sakshi/Desktop/project_sem6/data analysis/otto")
train <- read.csv("../otto/train.csv/train.csv")
test <- read.csv("../otto/test.csv/test.csv")
sample_sub <- read.csv("../otto/sampleSubmission.csv")
# remove id column so it doesn't get picked up by the random forest classifier
train2 <- train[,-1]
library(nnet)
mod <- nnet(target ~ .,data = train2, size = 5)
ps <- predict(mod,test)
cm1 <- data.frame(cm)
cm1 <- t(cm1)
mod1 <- data.frame(mod)
summary(mod)
write.csv(ps1, file = "subneuralfin.csv", row.names = FALSE)
ps1 <- data.frame(test$id,ps)
