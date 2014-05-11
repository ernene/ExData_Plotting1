source("./loadData.R") # script to reuse code to downloading/parsing data file
data<-loadData()

png(filename="plot2.png", width=480, height=480, bg="transparent")

plot(data$DateTime, data$Global_active_power, type="n",
     xlab="", ylab="Global Active Power (kilowatts)")
lines(data$DateTime, data$Global_active_power)

dev.off()
