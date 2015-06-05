library(lubridate)
dtconv <- function(d,t){
  fulldate <- paste(d,t,sep=" ")
  dmy_hms(fulldate)
}

loaddata <- function()
{
  household <- read.csv(file="household_power_consumption.txt", header=TRUE, sep=";",colClasses=c("character","character",rep("numeric",7)),na.strings="?")
  household <- household[which(household$Date == "1/2/2007" | household$Date =="2/2/2007"),]
  household$FullDate <- dtconv(household$Date,household$Time)
  household
}

