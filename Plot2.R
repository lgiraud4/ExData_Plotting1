source("Load-Data.R")   #  Read the Data
png("plot1.png", width=480, height=480)
hist(DT$Global_active_power,
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency",
     col="red")

dev.off()
