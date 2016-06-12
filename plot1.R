# Plot 1
# Construct the plot and save it to a PNG file with 
# a width of 480 pixels and a height of 480 pixels.
plot1 <- function(DataSet) {
  # Setting for creating a PNG file
  PNGOutput("plot1.png")

  # Creating the histgram
  hist(DataSet$Global_active_power,
       main="Global Active Power",
       xlab="Global Active Power (kilowatts)",
       ylab="Frequency",
       col="red")
  
  # close the device
  dev.off()
}


