library(plyr)
library(dplyr)
library(caret)
library(forecast)
library(lubridate)
library(chron)

train<-read.csv("E:/kaggle/Bike/WDCBike/train.csv", header=T)
test<-read.csv("E:/kaggle/Bike/WDCBike/test.csv", header=T)

test1<-test

test1<- test1 %>%
  mutate(
    casual=NA,
    registered=NA,
    count=NA
  )

foo<-as.POSIXct(Total$datetime[1], "%Y-%m-%d %H:%M:%S", tz="UTC")


format(Total$datetime[1], format="%Y-%m-%d %H:%M:%S")

goo<-ymd_hms(train$datetime[1])

fdo<-parse_date_time(Total$datetime[1], "%Y %m %d %H %M %S")

Total$dt<-as.chron(Total$datetime)

Total<-rbind(train, test1)


ggplot(Total, aes(x=dt, y=count)) + geom_line() + scale_x_datetime()

dat <- data.frame( fruit=c("Apple", "Apple", "Orange", "Orange", "Orange", "Orange",
                           "Orange", "Pear", "Pear", "Pear"), variable=c("Present", "Absent",
                                                                         "Present", "Present", "Present", "Present", "Absent", "Absent",
                                                                         "Absent", "Present") ) 
