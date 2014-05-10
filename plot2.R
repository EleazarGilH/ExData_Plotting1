###---plot 2
### read data
data <- read.csv(file= "household_power_consumption.csv", header =T)
data$DateTime<- paste(data$Date, data$Time, sep = " ")
data$Date2<- strptime(data$DateTime,format="%d/%m/%Y %H:%M:%S")
### plot
png(file = "plot2.png", width = 480, height = 480, units = "px")
plot(data$Date2,data$Global_active_power, type= "l",xlab="",ylab ="Global active power (kilowatts)",main="")
dev.off()