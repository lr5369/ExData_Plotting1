## Download data, unzip into a temp file.  

temp <- tempfile()
download.file("http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", temp)


dt<- read.table(unz(temp, "household_power_consumption.txt"),header=T, sep=';', na.strings="?", colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
unlink(temp)
# read  data for 2007-02-01 and 2007-02-02 

data <- dt[(dt$Date == "1/2/2007") | (dt$Date == "2/2/2007"),]
data$DateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")


