DateTimeAnnotation <- "%d/%m/%Y %H:%M:%S"


# COnvert DataTime
# Date: Date in format dd/mm/yyyy 
# Time: time in format hh:mm:ss
DateTime <- function(date, time) { 
   return (strptime(paste(date, time), DateTimeAnnotation)) 
} 


# Create Settings for PNG output
PNGOutput <- function(Filename)
{
  png(Filename, width = 480, height = 480)
}


# Load the Dataset
LoadDataSet <- function(FileName) { 

  # We are loading the dataset from a text file
  # dataset missing values are coded as ?
  DataSet <- read.table(
      FileName, 
      header=TRUE, 
      sep=";", 
      colClasses = c("character", "character", rep("numeric",7)), 
      na="?"
      ) 
  
  # We need to strip the time of the DateTime
  DataSet$Time <- strptime(paste(DataSet$Date, DataSet$Time), DateTimeAnnotation) 
  
  # we need to strip of the date of the DateTime
  DataSet$Date <- as.Date(DataSet$Date, "%d/%m/%Y") 
  
  # We will only be using data from the dates 2007-02-01 and 2007-02-02
  Dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d") 
  DataSet <- subset(DataSet, Date %in% Dates) 
    
  return(DataSet) 
} 