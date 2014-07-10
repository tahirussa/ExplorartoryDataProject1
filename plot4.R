+#setwd("D:\\Stefan\\Cursus\\Specialization Data Science\\4 Exploratory Data Analysis\\Course Project 1")
 +
 +## Read outcome data
 +data <- read.csv("household_power_consumption.txt", header=TRUE, na.strings=c("?"),sep=";")
 +# reduce to only 2 days of data
 +data <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]
 +data$DateTime<-strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")
 +
 +#We want 4 quadrants with plots
 +par(mfrow=c(2,2))
 +# 1st plot
 +plot(data$DateTime, data$Global_active_power, type="l", xlab = "", ylab = "Global Active Power")
 +# 2nd plot
 +plot(data$DateTime, data$Voltage, type="l", xlab = "datetime", ylab = "Voltage")
 +# 3rd plot
 +plot(data$DateTime, data$Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
 +# fill plot with the differently colored lines
 +lines(data$DateTime, data$Sub_metering_1, col="black")
 +lines(data$DateTime, data$Sub_metering_2, col="red")
 +lines(data$DateTime, data$Sub_metering_3, col="blue")
 +legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lwd=1, col=c("black","red","blue"))
 +# 4th plot
 +plot(data$DateTime, data$Global_reactive_power, type="l", xlab = "datetime", ylab = "Global_reactive_power")
 +
 +dev.copy(png, file = "plot4.png")
 +dev.off()
