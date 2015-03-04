source("loadData.R")
Sys.setlocale("LC_TIME", "English")
power <- loadData()
png(filename = "plot4.png", width = 480, height = 480)
par(mfrow = c(2,2))

## PLOT 1,1 ##
plot(
    power[["Time"]], 
    power[["Global_active_power"]], 
    type = "l", 
    xlab = "", 
    ylab = "Global Active Power (kilowatts)")

# PLOT 1,2 ##
plot(
    power[["Time"]], 
    power[["Voltage"]], 
    type = "l", 
    xlab = "datetime", 
    ylab = "Voltage")

## PLOT 2,1 ##
plot(
    power[["Time"]], 
    power[["Sub_metering_1"]], 
    type = "l", 
    xlab = "", 
    ylab = "Energy sub metering")
lines(
    power[["Time"]], 
    power[["Sub_metering_2"]], 
    col="red")
lines(
    power[["Time"]], 
    power[["Sub_metering_3"]], 
    col="blue")
legend(
    "topright", 
    legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
    horiz=FALSE, 
    lty=1, 
    col=c("black","red","blue"))

## PLOT 2,2 ##
plot(
    power[["Time"]], 
    power[["Global_reactive_power"]], 
    type = "l", 
    xlab = "datetime", 
    ylab = "Global_reactive_power")

dev.off()