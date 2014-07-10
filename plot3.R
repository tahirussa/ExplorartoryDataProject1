+#setwd("D:\\Stefan\\Cursus\\Specialization Data Science\\4 Exploratory Data Analysis\\Course Project 1")
 +
 +## Read outcome data
 +data <- read.csv("household_power_consumption.txt", header=TRUE, na.strings=c("?"),sep=";")
 +# reduce to only 2 days of data
 +data <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]
 +data$DateTime<-strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")
 +# create empty plot
 +plot(data$DateTime, data$Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
 +# fill plot with the differently colored lines
 +lines(data$DateTime, data$Sub_metering_1, col="black")
 +lines(data$DateTime, data$Sub_metering_2, col="red")
 +lines(data$DateTime, data$Sub_metering_3, col="blue")
 +legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lwd=1, col=c("black","red","blue"))
 +# copy the plot to a file
 +dev.copy(png, file = "plot3.png")
 +dev.off()
