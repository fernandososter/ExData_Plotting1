

data <- read.table(file="household_power_consumption.txt",sep = ";",header = TRUE )

data1 <- subset(data,as.Date(data$Date,format="%d/%m/%Y") >= as.Date("01/02/2007",format="%d/%m/%Y") )

data1 <- subset(data1,as.Date(data1$Date,format="%d/%m/%Y") <= as.Date("02/02/2007",format="%d/%m/%Y") )

png(filename = "plot2.png",height = 480, width = 480, units = "px")

par(mar = c(5,5,5,5))

plot(as.numeric(as.character(data1$Global_active_power)) ~ as.POSIXct(paste(data1$Date,data1$Time),format="%d/%m/%Y %H:%M"),type = "l",ylab = "Global Active Power (killowatts)",xlab = "")

dev.off()