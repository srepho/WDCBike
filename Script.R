library(plyr)
library(dplyr)
library(caret)
library(forecast)
library(lubridate)

train<-read.csv("E:/kaggle/Bike/WDCBike/train.csv", header=T)
test<-read.csv("E:/kaggle/Bike/WDCBike/test.csv", header=T)

test1<-test

test1<- test1 %>%
  mutate(
    casual=NA,
    registered=NA,
    count=NA
  )



Total<-rbind(train, test)


ggplot(train, )


