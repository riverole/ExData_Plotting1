plot2 <- function() {
  house <- read.csv("household_power_consumption.txt", sep = ";")
  housefeb <- subset(house, house$Date == "1/2/2007" | house$Date == "2/2/2007")
  housefeb$Time <- paste(housefeb$Date, housefeb$Time)
  housefeb$Time <- strptime(housefeb$Time, "%d/%m/%Y %H:%M:%S")
  housefeb$Global_active_power <- as.numeric(as.character(housefeb$Global_active_power))
  plot(housefeb$Time, housefeb$Global_active_power, ylab = "Global Active Power (kilowatts)", xlab = "" , type = "l")
}