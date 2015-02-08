pwr_all<-read.csv(file="household_power_consumption.txt",header=TRUE,sep=";", na.strings="?",colClasses=c("factor","factor","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
pwr<-pwr_all[grep("^[12]/2/2007",pwr_all$Date),]

png(file="plot2.png")

x_time<-seq(pwr$Time)
plot(seq(pwr$Time),pwr$Global_active_power, type="l", xlab="" , ylab="Global Active Power (kilowatts)", xaxt="n")
#axis(1,c(min(seq(pwr$Time)),mean(seq(pwr$Time)), max(seq(pwr$Time)) ), c("Thu","Fri","Sat"))
axis(1,c(min(x_time),mean(x_time), max(x_time) ), c("Thu","Fri","Sat"))

dev.off()