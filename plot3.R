#projet 1 - coursera.org - mai 2014
#plot3
#setwd("G:/R_ATELIER/coursera_projet1")  ###G:\R_ATELIER\coursera_projet1
#setwd("/home/menthalo/R-project1")
#getwd()
df <- read.table(file="household_power_consumption.txt", sep=";",
                 header=F,nrows=2*24*60+1, skip=66637,na.strings="?", stringsAsFactors=F)
df1 <- read.table(file="household_power_consumption.txt", sep=";",
                  header=T,nrows=1,na.strings="?", stringsAsFactors=F)
colnames(df)<-colnames(df1)

chr_date_time <- paste(df$Date, df$Time)
my.datetime <- strptime(chr_date_time,format="%d/%m/%Y %H:%M:%S")

oldgetloc <- Sys.getlocale(category = "LC_TIME")
#Sys.setlocale("LC_TIME", "en_US.UTF-8")
Sys.setlocale("LC_TIME", "english")
jours<-format(my.datetime,format="%a")

#plot3
png("plot3.png",bg = "transparent")
plot(my.datetime,df$Sub_metering_1, xaxt="n",type="l",xlab="",ylab="Energy sub metering",col="black")
lines(my.datetime,df$Sub_metering_2,xlab="",col="red")
lines(my.datetime,df$Sub_metering_3, xlab="",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","red","blue"))
my.at <- seq(1,2*24*60+1,24*60)
axis(side=1,labels=jours[my.at], at=as.double(my.datetime[my.at]))
dev.off()


Sys.setlocale(category="LC_TIME",oldgetloc)



#summary(df)
#str(df)

#plot(jours, df$Global_active_power)
#Sys.getlocale(category = "LC_TIME")
#Sys.getlocale(category = "LC_TIME")
#[1] "French_France.1252"

#jours<-format(my.datetime,format="%a %d/%m/%Y %H:%M:%S")

#str(jours)
#head(jours)
#my.date <- strptime(chr_date_time,format="%d/%m/%Y")

#jours[my.at]

#Sys.setlocale("LC_TIME", "English")
#Sys.setlocale("LC_TIME", "French_France.1252")