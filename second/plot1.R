

data <- read.table(file="household_power_consumption.txt",sep = ";",header = TRUE )

data1 <- subset(data,as.Date(data$Date,format="%d/%m/%Y") >= as.Date("01/02/2007",format="%d/%m/%Y") )

data1 <- subset(data1,as.Date(data1$Date,format="%d/%m/%Y") <= as.Date("02/02/2007",format="%d/%m/%Y") )

png(filename = "plot1.png",height = 480, width = 480, units = "px")


par(mar = c(5,5,5,5))

hist(as.numeric(as.character(data1$Global_active_power)),col="red",xlab = "Global Active Power (killowats)",main = "Global Active Power")

dev.off()