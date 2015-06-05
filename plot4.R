source("loaddata.R")
source("plot2.R")
source("plot3.R")


plot12 <- function()
{
  if(!exists("household")) household <<- loaddata()
  with(household,plot(FullDate,Voltage,type="l",xlab="datetime"))
}

plot22 <- function()
{
  if(!exists("household")) household <<- loaddata()
  with(household,plot(FullDate,Global_reactive_power,type="l",xlab="datetime"))
}

plot4 <- function()
{
  if(!exists("household")) household <<- loaddata()
  par(mfrow = c(2,2))
  plot2()
  plot12()
  plot3()
  plot22()
}

savePlot4 <- function()
{
  png("plot4.png")
  plot4()
  dev.off()
}
