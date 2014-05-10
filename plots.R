### Coursera course Exploratory analysis - Project 1
setwd("/Users/egil/datasciencecoursera/ExData_Plotting1")

getwd()

## read data
data <- read.csv(file= "household_power_consumption.csv", header =T)
data$DateTime<- paste(data$Date, data$Time, sep = " ")
data$Date2<- strptime(data$DateTime,format="%d/%m/%Y %H:%M:%S")
#data$Day <-strftime(data$Date,  '%a')
#data$Time <- strptime(data$Time,format = "%H:%M:%S")
#data$Date2<-as.Date(data$Date2)


###plot 1
png(file = "plot1.png", width = 480, height = 480, units = "px")
hist(data$Global_active_power, col = "red", xlab= "Global active power (kilowatts)",main="")
title(main = "Global Active Power")
dev.off()
### plot 2
png(file = "plot2.png", width = 480, height = 480, units = "px")
plot(data$Date2,data$Global_active_power, type= "l",xlab="",ylab ="Global active power (kilowatts)",main="")
dev.off()
### plot 3
png(file = "plot3.png", width = 480, height = 480, units = "px")
plot(data$Date2,data$Sub_metering_1, type= "l",xlab="",ylab ="Energy sub metering",main="")
lines(data$Date2,data$Sub_metering_2, col = "red")
lines(data$Date2,data$Sub_metering_3, col = "blue")
legend("topright",lty=c(1,1,1), col = c("black","red","blue"),legend =names(data)[7:9])
dev.off()
### plot 4
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