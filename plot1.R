plot1 <- function() {
  house <- read.csv("household_power_consumption.txt", sep = ";")
  housefeb <- subset(house, house$Date == "1/2/2007" | house$Date == "2/2/2007")
  housefeb$Date <- as.Date(housefeb$Date, "%d/%m/%Y")
  housefeb$Global_active_power <- as.numeric(as.character(housefeb$Global_active_power))
  hist(housefeb$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
}