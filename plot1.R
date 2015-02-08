pwr_all<-read.csv(file="household_power_consumption.txt",header=TRUE,sep=";", na.strings="?",colClasses=c("factor","factor","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
pwr<-pwr_all[grep("^[12]/2/2007",pwr_all$Date),]

png(file="plot1.png")
hist(pwr$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()