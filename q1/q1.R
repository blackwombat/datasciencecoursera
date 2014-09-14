#setwd("q1")
frame = read.csv("hw1_data.csv")

names(frame)

frame[1:2,]

nrow(frame)

tail(frame,2)

frame[47, "Ozone"]

ozone <- frame[,"Ozone"]
x<-is.na(ozone)
length(ozone[x])

mean(ozone[!x])

temp <- frame[,"Temp"]
mean(frame[,"Solar.R"][!is.na(ozone) & ozone>31 & !is.na(temp) & temp>90])

mean(frame[,"Temp"][frame[,"Month"]==6])

max(frame[,"Ozone"][!is.na(ozone) & frame[,"Month"]==5])
