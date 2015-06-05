source("loaddata.R")

plot3 <- function()
{
  if(!exists("household")) household <<- loaddata()
  with(household, plot(FullDate,Sub_metering_1, type="n",ylab="Energy sub metering",xlab=""))
  with(household, lines(FullDate,Sub_metering_1))
  with(household, lines(FullDate,Sub_metering_2,col="red"))
  with(household, lines(FullDate,Sub_metering_3,col="blue"))
  legend("topright",lty=1, legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"))
}
savePlot3 <- function()
{
  png("plot3.png")
  plot3()
  dev.off()
}
