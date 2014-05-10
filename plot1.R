#projet 1 - coursera.org - mai 2014
#plot1
#setwd("G:/R_ATELIER/coursera_projet1")  ###G:\R_ATELIER\coursera_projet1
##setwd("/home/menthalo/R-project1")
#getwd()
df <- read.table(file="household_power_consumption.txt", sep=";",
	header=F,nrows=2*24*60+1, skip=66637,na.strings="?", stringsAsFactors=F)
df1 <- read.table(file="household_power_consumption.txt", sep=";",
	header=T,nrows=1,na.strings="?", stringsAsFactors=F)
colnames(df)<-colnames(df1)
#summary(df)
#str(df)

#plot1
png("plot1.png",bg = "transparent")
hist(df$Global_active_power, col="red",xlab="Global Active Power (kilowatts)",ylab="Frequency",main="Global Active Power")
dev.off()
