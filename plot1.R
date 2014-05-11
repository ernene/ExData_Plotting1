source("./loadData.R") # script to reuse code to downloading/parsing data file
data<-loadData()

png(filename="plot1.png", width=480, height=480, bg="transparent")

hist(data$Global_active_power, col="red",
     main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()
