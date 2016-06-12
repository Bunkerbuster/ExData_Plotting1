# Plot 3
# Construct the plot and save it to a PNG file with 
# a width of 480 pixels and a height of 480 pixels.
plot3 <- function(DataSet) {

    # Setting for creating a PNG file
  PNGOutput("plot3.png")
  
  # Creating the plot
  plot(
        DataSet$Time
       , DataSet$Sub_metering_1
       , type="l"
       , col="black"
       , xlab=""
       , ylab="Energy sub metering")
  
  lines(DataSet$Time, DataSet$Sub_metering_2, col="red")
  
  lines(DataSet$Time, DataSet$Sub_metering_3, col="blue")
  
  legend(
        "topright"
        , col=c("black", "red", "blue")
        , c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
        , lty=1)
  
  # close the device
  dev.off()
}
