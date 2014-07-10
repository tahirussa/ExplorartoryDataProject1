+#setwd("D:\\Stefan\\Cursus\\Specialization Data Science\\4 Exploratory Data Analysis\\Course Project 1")
 +
 +## Read outcome data
 +data <- read.csv("household_power_consumption.txt", header=TRUE, na.strings=c("?"),sep=";")
 +# reduce to only 2 days of data
 +data <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]
 +# plot histogram and save as .png file 
 +with(data, hist(Global_active_power, col="red", main = "Global active Power", xlab = "Global Active Power (kilowatts)"))
 +dev.copy(png, file = "plot1.png")
 +dev.off()
