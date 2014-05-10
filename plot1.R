###---plot 1
### read data
data <- read.csv(file= "household_power_consumption.csv", header =T)
data$DateTime<- paste(data$Date, data$Time, sep = " ")
data$Date2<- strptime(data$DateTime,format="%d/%m/%Y %H:%M:%S")
### plot
png(file = "plot1.png", width = 480, height = 480, units = "px")
hist(data$Global_active_power, col = "red", xlab= "Global active power (kilowatts)",main="")
title(main = "Global Active Power")
dev.off()