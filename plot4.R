###---plot 4
### read data
data <- read.csv(file= "household_power_consumption.csv", header =T)
data$DateTime<- paste(data$Date, data$Time, sep = " ")
data$Date2<- strptime(data$DateTime,format="%d/%m/%Y %H:%M:%S")
### plot
png(file = "plot4.png", width = 480, height = 480, units = "px")
par(mfrow = c(2,2))
plot(data$Date2,data$Global_active_power, type= "l",xlab="",ylab ="Global Active Power",main="")
plot(data$Date2,data$Voltage, type= "l",xlab="datatime",ylab ="Voltage",main="")
plot(data$Date2,data$Sub_metering_1, type= "l",xlab="",ylab ="Energy sub metering",main="")
lines(data$Date2,data$Sub_metering_2, col = "red")
lines(data$Date2,data$Sub_metering_3, col = "blue")
legend("topright",lty=c(1,1,1), col = c("black","red","blue"),legend =names(data)[7:9],bty="n")
plot(data$Date2,data$Global_reactive_power,xlab="datatime",ylab="Global_reactive_power", type= "l",main="")
dev.off()