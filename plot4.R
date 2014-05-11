source("./loadData.R") # script to reuse code to downloading/parsing data file
data<-loadData()

png(filename="plot4.png", width=480, height=480, bg="transparent")


par(mfrow = c(2, 2))

#1
plot(data$DateTime, data$Global_active_power, type="n",
     xlab="", ylab="Global Active Power")
lines(data$DateTime, data$Global_active_power)

#2
plot(data$DateTime, data$Voltage, type="n",
     xlab="datetime", ylab="Voltage")
lines(data$DateTime, data$Voltage)

#3
plot(data$DateTime, data$Sub_metering_1, type="n",
     xlab="", ylab="Energy sub metering")
lines(data$DateTime, data$Sub_metering_1, col="black")
lines(data$DateTime, data$Sub_metering_2, col="red")
lines(data$DateTime, data$Sub_metering_3, col="blue")
legend("topright", lty=1,
       col=c("black", "red", "blue"),
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#4
plot(data$DateTime, data$Global_reactive_power, type="n",
     xlab="datetime", ylab="Global_reactive_power")
lines(data$DateTime, data$Global_reactive_power)

dev.off()
