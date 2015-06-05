source("loaddata.R")

plot2 <- function()
{
  if(!exists("household")) household <<- loaddata()
  plot(household$FullDate,household$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")
}
savePlot2 <- function()
{
  png("plot2.png")
  plot2()
  dev.off()
}
