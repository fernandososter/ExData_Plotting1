

data <- read.table(file="household_power_consumption.txt",sep = ";",header = TRUE )

data1 <- subset(data,as.Date(data$Date,format="%d/%m/%Y") >= as.Date("01/02/2007",format="%d/%m/%Y") )

data1 <- subset(data1,as.Date(data1$Date,format="%d/%m/%Y") <= as.Date("02/02/2007",format="%d/%m/%Y") )

png(filename = "plot4.png",height = 480, width = 480, units = "px")

par(mfrow = c(2,2))


plot(as.numeric(as.character(data1$Global_active_power)) ~ as.POSIXct(paste(data1$Date,data1$Time),format="%d/%m/%Y %H:%M"),type = "l",ylab = "Global Active Power (killowatts)",xlab = "")



plot(as.POSIXct(paste(data1$Date,data1$Time),format="%d/%m/%Y %H:%M"),as.numeric(as.character(data1$Voltage)),type = "l",xlab = "datetime",ylab = "Voltage")



plot(as.POSIXct(paste(data1$Date,data1$Time),format="%d/%m/%Y %H:%M"),as.numeric(as.character(data1$Sub_metering_1)),type = "l",xlab = "",ylab = "Energy sub metering")

lines(as.POSIXct(paste(data1$Date,data1$Time),format="%d/%m/%Y %H:%M"),as.numeric(as.character(data1$Sub_metering_2)),type = "l",col = "red")

lines(as.POSIXct(paste(data1$Date,data1$Time),format="%d/%m/%Y %H:%M"),as.numeric(as.character(data1$Sub_metering_3)),type = "l",col = "blue")

legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty = 1)


plot(as.POSIXct(paste(data1$Date,data1$Time),format="%d/%m/%Y %H:%M"),as.numeric(as.character(data1$Global_reactive_power)),type = "l",xlab = "datetime",ylab = "Global_reactive_power")

dev.off()