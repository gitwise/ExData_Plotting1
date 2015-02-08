pwr_all<-read.csv(file="household_power_consumption.txt",header=TRUE,sep=";", na.strings="?",colClasses=c("factor","factor","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
pwr<-pwr_all[grep("^[12]/2/2007",pwr_all$Date),]

png(file="plot4.png")
par(mfcol=c(2,2))

x_time<-seq(pwr$Time)
plot(seq(pwr$Time),pwr$Global_active_power, type="l", xlab="" , ylab="Global Active Power", xaxt="n")
axis(1,c(min(x_time),mean(x_time), max(x_time) ), c("Thu","Fri","Sat"))

plot(seq(pwr$Time),pwr$Sub_metering_1, type="n", xlab="" , ylab="Energy sub metering", xaxt="n", col="black")
lines(seq(pwr$Time),pwr$Sub_metering_1, col="black")
lines(seq(pwr$Time),pwr$Sub_metering_2, col="red")
lines(seq(pwr$Time),pwr$Sub_metering_3, col="blue")
legend("topright",bty="n",lty=1, c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue") )
axis(1,c(min(x_time),mean(x_time), max(x_time) ), c("Thu","Fri","Sat"))

plot(seq(pwr$Time),pwr$Voltage, type="l", xlab="datetime" , ylab="Voltage", xaxt="n", col="black")
axis(1,c(min(x_time),mean(x_time), max(x_time) ), c("Thu","Fri","Sat"))

plot(seq(pwr$Time),pwr$Global_reactive_power, type="l", xlab="datetime" , ylab="Global_reactive_power", xaxt="n", col="black")
axis(1,c(min(x_time),mean(x_time), max(x_time) ), c("Thu","Fri","Sat"))

dev.off()