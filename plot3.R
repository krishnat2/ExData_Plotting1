# Set the png File Name, width, height and units
png(filename = 'plot3.png', width = 480, height = 480, units = 'px')

# Plot multiple line charts for Sub_metering1, Sub_metering2 and Sub_metering3 columns 
# against dateTime column.
# A legent is created for identify each of these plots.
with(dt, {
  plot(dateTime, Sub_metering_1, type = 'n', xlab = '', ylab = 'Energy sub metering')
  lines(dateTime, Sub_metering_1, col = 'black')
  lines(dateTime, Sub_metering_2, col = 'red')
  lines(dateTime, Sub_metering_3, col = 'blue')
  })
legend("topright", lty="solid", col = c('black', 'red', 'blue'), legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))
# close the png file device
dev.off()