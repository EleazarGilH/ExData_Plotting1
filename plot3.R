###---plot 3
### read data
data <- read.csv(file= "household_power_consumption.csv", header =T)
data$DateTime<- paste(data$Date, data$Time, sep = " ")
data$Date2<- strptime(data$DateTime,format="%d/%m/%Y %H:%M:%S")
### plot
png(file = "plot3.png", width = 480, height = 480, units = "px")
plot(data$Date2,data$Sub_metering_1, type= "l",xlab="",ylab ="Energy sub metering",main="")
lines(data$Date2,data$Sub_metering_2, col = "red")
lines(data$Date2,data$Sub_metering_3, col = "blue")
legend("topright",lty=c(1,1,1), col = c("black","red","blue"),legend =names(data)[7:9])
dev.off()