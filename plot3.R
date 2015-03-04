source("loadData.R")
Sys.setlocale("LC_TIME", "English")
power <- loadData()
png(filename = "plot3.png", width = 480, height = 480)
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
dev.off()