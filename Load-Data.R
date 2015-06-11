##### Read Data #####
## for household power consumption #####

setwd("./data")
tab9rows <- read.table("household_power_consumption.txt", header = TRUE, nrows = 9)
classes <- sapply(tab9rows, class)
DT<-read.table("household_power_consumption.txt",header=TRUE, sep=';',na='?',  colClasses = classes)
# convert date and time variables to Date/Time class
DT$Time <- strptime(paste(DT$Date, DT$Time), "%d/%m/%Y %H:%M:%S")
DT$Date <- as.Date(DT$Date, "%d/%m/%Y")
# only use data from the dates 2007-02-01 and 2007-02-02
duration <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
DT <- subset(DT, Date %in% duration)

##########################
