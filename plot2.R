# Set the png File Name, width, height and units
png(filename = 'plot2.png', width = 480, height = 480, units = 'px')

# Plot Line chart for dt$Global_active_power against dateTime
# X-Axis Label "Global Active Power (killowatts)"
with(dt, {
     plot(y = Global_active_power, x = dateTime, type = 'n', xlab = ' ', ylab = 'Global Active Power (killowatts)')
     lines(y = Global_active_power, x = dateTime)
})
# close the png file device
dev.off()