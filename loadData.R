loadData<-function() {
    #download zip and unzip .txt file
    fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    message("downloading file...")
    download.file(fileUrl, destfile="household_power_consumption.zip", method="curl")
    txtfile <- unz("household_power_consumption.zip", "household_power_consumption.txt")
    
    #load
    data<-read.csv(txtfile, header=TRUE, sep=";", na.strings="?")
    
    #subset and formatting
    subset<-subset(data, data$Date=="1/2/2007" | data$Date=="2/2/2007")    
    #subset$DateTime <- as.POSIXct(paste(subset$Date,subset$Time))
    subset$DateTime <- strptime(paste(subset$Date, subset$Time), "%d/%m/%Y %H:%M:%S")
    subset[,2:8]<-sapply(subset[,2:8],as.numeric)
    subset
}