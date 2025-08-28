#1
setwd("C:/Users/USER/Desktop/IT24101808")
getwd()

Delivery_Times <- read.table("Exercise - Lab 05.txt", header=TRUE)
colnames(Delivery_Times) <- c("Delivery_Time")
SSSDelivery_Times$Delivery_Time <- as.numeric(Delivery_Times$Delivery_Time)

#2

breaks <- seq(20, 74, by=6)   

hist(Delivery_Times$Delivery_Time,
     breaks=breaks,
     right=FALSE,                      
     main="Histogram of Delivery Times",
     xlab="Delivery Time (minutes)",
     ylab="Frequency",
     col="lightblue", border="black")
#4

freq <- table(cut(Delivery_Times$Delivery_Time, breaks, right=FALSE))
cum_freq <- cumsum(freq)


plot(breaks[-1], cum_freq, type="o", pch=16, col="blue",
     main="Cumulative Frequency Polygon (Ogive)",
     xlab="Delivery Time (minutes)",
     ylab="Cumulative Frequency")



