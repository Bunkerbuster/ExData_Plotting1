# Loading the needed Funcions
# For setting/cleaning variables / data and loading the Data

setwd("E:/Cousera/04 Exploratory Data Analysis/Git 1/ExData_Plotting1")
source("LoadFunctions.R")

# FileName we are using within our working directory
FileName <- "household_power_consumption.txt" 

DataSet <- LoadDataSet(FileName)


source("plot1.R")
plot1(DataSet)

source("plot2.R")
plot2(DataSet)

source("plot3.R")
plot3(DataSet)

source("plot4.R")
plot4(DataSet)
