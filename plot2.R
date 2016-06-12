# Plot 2
# Construct the plot and save it to a PNG file with 
# a width of 480 pixels and a height of 480 pixels.
plot2 <- function(DataSet) {
  # Setting for creating a PNG file
  PNGOutput("plot2.png")
  
  # Creating the plot
  plot(DataSet$Time, DataSet$Global_active_power,
       type="l",
       xlab="",
       ylab="Global Active Power (kilowatts)")
  
  # close the device
  dev.off()
}