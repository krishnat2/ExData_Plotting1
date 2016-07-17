# Load Library
library(data.table)

# Download the Files
datasetURL <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
download.file(datasetURL, 'electicpowercomsumption.zip', method = 'curl')

# unzip the file to current working directory.
unzip('electicpowercomsumption.zip', exdir = '.', unzip = 'internal', overwrite = TRUE)

#Load the entire dataset into the memory, with seperator ';'
# Since the missing values are marking as '?', we need to explicitily mention that.
dt <- read.table('household_power_consumption.txt', header = TRUE, sep = ";", na.strings = '?')

#now subset only the data of interest. That is, all the records where 
# Date is 1/2/2007 and 2/2/2007
dt <- subset(dt, dt$Date == '1/2/2007' | dt$Date == '2/2/2007')

# Clean Date and Time columns
dt$dateTime <- strptime(paste(dt$Date, dt$Time, sep = ' '), format = '%d/%m/%Y %H:%M:%S')