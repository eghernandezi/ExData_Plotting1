source("loadData.R")
Sys.setlocale("LC_TIME", "English")
power <- loadData()
png(filename = "plot2.png", width = 480, height = 480)
plot(
    power[["Time"]], 
    power[["Global_active_power"]], 
    type = "l", 
    xlab = "", 
    ylab = "Global Active Power (kilowatts)")
dev.off()