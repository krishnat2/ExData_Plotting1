
# Set the png File Name, width, height and units
png(filename = 'plot1.png', width = 480, height = 480, units = 'px')

# Plot Histogram for dt$Global_active_power with color Red and
# X-Axis Label "Global Active Power (killowatts)" and 
# main title "Global Active Power"
hist(dt$Global_active_power, col = 'red', xlab = 'Global Active Power (killowatts)', main = 'Global Active Power')

# close the png file device
dev.off()