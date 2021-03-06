source("loadData.R")
power <- loadData()
png(filename = "plot1.png", width = 480, height = 480)
hist(
    power[["Global_active_power"]], 
    col="red", 
    main="Global Active Power", 
    xlab="Global Active Power (kilowatts)",
    )
dev.off()