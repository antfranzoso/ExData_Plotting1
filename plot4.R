source("loadDataset.R")

par("mfrow" = c(2,2))
par("mar" = c(5.1,4.1,4.1,2.1))

#First plot
plot(data$Datetime,
     data$Global_active_power,
     type = "l",
     ylab = "Global Active Power (kilowatts)",
     xlab = ""
)

#Second plot
plot(data$Datetime,
     data$Voltage,
     type = "l",
     ylab = "voltage",
     xlab = "datetime"
)

#Third plot
plot(data$Datetime, data$Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab = "")
lines(data$Datetime, data$Sub_metering_1, col = "black")
lines(data$Datetime, data$Sub_metering_2, col = "red")
lines(data$Datetime, data$Sub_metering_3, col = "blue")
legend(
  "topright",
  col = c("black", "red", "blue"),
  lty = c(1, 1, 1),
  legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
  cex = 0.05,
  bty = "N"
)

#Forth plot
plot(data$Datetime,
     data$Global_reactive_power,
     type = "l",
     xlab = "datetime",
     ylab = "Global_reactive_power"
)

#Save the plot as png file
dev.copy(png, "plot4.png", width = 480, height = 480, units = "px")
dev.off()