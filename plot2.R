
source("get_data.R")

# open the png device, create the plot and close the device.

png(filename = "plot2.png", width = 480, height = 480, units = "px")
plot(dt$DateTime, dt$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()