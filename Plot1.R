library(dplyr)

dataFile <- "household_power_consumption.txt"
data_set <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
analysis_set <- data_set[data_set$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
globalActivePower <- as.numeric(analysis_set$Global_active_power)
png("plot1.png", width=480, height=480)
plot9 <-hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

