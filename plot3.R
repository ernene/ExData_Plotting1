source("./loadData.R") # script to reuse code to downloading/parsing data file
data<-loadData()

png(filename="plot3.png", width=480, height=480, bg="transparent")

plot(data$DateTime, data$Sub_metering_1,type="n",
     xlab="", ylab="Energy sub metering")
lines(data$DateTime, data$Sub_metering_1, col="black")
lines(data$DateTime, data$Sub_metering_2, col="red")
lines(data$DateTime, data$Sub_metering_3, col="blue")
legend("topright", lty=1,
       col=c("black", "red", "blue"),
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()
