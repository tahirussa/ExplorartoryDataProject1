+#setwd("D:\\Stefan\\Cursus\\Specialization Data Science\\4 Exploratory Data Analysis\\Course Project 1")
 +
 +## Read outcome data
 +data <- read.csv("household_power_consumption.txt", header=TRUE, na.strings=c("?"),sep=";")
 +# reduce to only 2 days of data
 +data <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]
 +data$DateTime<-strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")
 +
 +#data$weekday <- weekdays(data$DateTime)
 +plot(data$DateTime, data$Global_active_power, type="l", xlab = "", ylab = "Global Active Power (kilowatts)")
 +dev.copy(png, file = "plot2.png")
 +dev.off()
