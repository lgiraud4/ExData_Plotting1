source("Load-Data.R")
png("plot4.png", width=480, height=480)

par(mfrow=c(2,2))
### plot1
plot(DT$Time, DT$Global_active_power,type="l",xlab="",ylab="Global Active Power")
### plot2
plot(DT$Time, DT$Voltage, type="l",xlab="datetime", ylab="Voltage")
### plot3
plot(DT$Time, DT$Sub_metering_1, type="l", col="black",xlab="", ylab="Energy sub metering")
lines(DT$Time, DT$Sub_metering_2, col="red")
lines(DT$Time, DT$Sub_metering_3, col="blue")
legend("topright",col=c("black", "red", "blue"),c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=1,box.lwd=0)
### plot4
plot(DT$Time, DT$Global_reactive_power, type="n",xlab="datetime", ylab="Global_reactive_power")
lines(DT$Time, DT$Global_reactive_power)

dev.off()
