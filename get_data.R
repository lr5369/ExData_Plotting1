## Download data, unzip into a temp file.  

temp <- tempfile()
download.file("http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", temp)
dt<- read.table(unz(temp, "household_power_consumption.txt"),header=T, sep=';', na.strings="?", colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
unlink(temp)

# read 2 days worth of data for 2007-02-01 and 2007-02-02
dt <- dt[(dt$Date == "1/2/2007") | (dt$Date == "2/2/2007"),]
dt$DateTime <- strptime(paste(dt$Date, dt$Time), "%d/%m/%Y %H:%M:%S")


