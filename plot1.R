source("loaddata.R")

plot1 <- function()
{
  if(!exists("household")) household <<- loaddata()
  hist(household$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red")
}
savePlot1 <- function()
{
  png("plot1.png")
  plot1()
  dev.off()
}
