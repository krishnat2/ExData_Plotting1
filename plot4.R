# Set the png File Name, width, height and units
png(filename = 'plot4.png', width = 480, height = 480, units = 'px')

# we create a multiple plots, in 2 rows and 2 columns.
par(mfrow=c(2,2))

#sub plot1 is a line chart for Global_active_power against dateTime column
with(dt, {
  plot(dateTime, Global_active_power, type = 'n', xlab = '', ylab = 'Global Active Power')
  lines(dateTime, Global_active_power)
})

#sub plot2 is line chart for Voltage against dateTime column 
with(dt, {
  plot(dateTime, Voltage, type = 'n', xlab = 'datetime', ylab = 'Voltage')
  lines(dateTime, Voltage)
})

#sub plot3 is three line chart, with a legend marked by color, and the label.
with(dt, {
  plot(dateTime, Sub_metering_1, type = 'n', xlab = '', ylab = 'Energy sub metering')
  lines(dateTime, Sub_metering_1, col = 'black')
  lines(dateTime, Sub_metering_2, col = 'red')
  lines(dateTime, Sub_metering_3, col = 'blue')
})
legend("topright", lty="solid", col = c('black', 'red', 'blue'), legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))

#sub plot4 is a line chart for Global_reactive_power against dateTime column
with(dt, {
  plot(dateTime, Global_reactive_power, type = 'n', xlab = '', ylab = 'Global_reactive_power')
  lines(dateTime, Global_reactive_power)
})


# close the png file device
dev.off()