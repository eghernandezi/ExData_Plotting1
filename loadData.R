loadData <- function() {
    power <- read.table("household_power_consumption.txt", sep=";", na.strings="?", colClasses=c(rep("character", 2), rep("numeric",7)), header = TRUE)
    power[["Time"]] <- strptime(paste(power[["Date"]], power[["Time"]]), "%d/%m/%Y %H:%M:%S")
    power[["Date"]] <- as.Date(power[["Date"]], "%d/%m/%Y")
    subset(power, power$Date == as.Date("2007-02-01") | power$Date == as.Date("2007-02-02"))
}