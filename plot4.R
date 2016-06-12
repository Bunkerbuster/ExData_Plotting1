# Plot 4
# Construct the plot and save it to a PNG file with 
# a width of 480 pixels and a height of 480 pixels.
plot4 <- function(DataSet) {
  # Setting for creating a PNG file
  PNGOutput("plot4.png")
  
  # Setting up Multi set of plots
  # 2 by 2 
  par(mfrow=c(2,2))
  
  # Settings plot 1
  plot(DataSet$Time, DataSet$Global_active_power,
       type="l",
       xlab="",
       ylab="Global Active Power")
  
  
  # Settings plot 2
  plot(
         DataSet$Time
       , DataSet$Voltage
       , type="l"
       , xlab="datetime"
       , ylab="Voltage"
      )
  
  # Settings plot 3
  plot(
          DataSet$Time
        , DataSet$Sub_metering_1
        , type="l"
        , col="black"
        , xlab=""
        , ylab="Energy sub metering"
      )
  
  lines(
        DataSet$Time
        , DataSet$Sub_metering_2
        , col="red"
      )
  
  lines(
        DataSet$Time
        , DataSet$Sub_metering_3
        , col="blue"
      )
  legend(
        "topright"
        , col=c("black", "red", "blue")
        , c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
        , lty=1
        , box.lwd=0
        )
  
  # Settings plot 4
  plot(
        DataSet$Time
        , DataSet$Global_reactive_power
        , type="n"
        , xlab="datetime"
        , ylab="Global_reactive_power"
      )
  
  lines(
      DataSet$Time
      , DataSet$Global_reactive_power
      )
  
  
  # close the device
  dev.off()
}