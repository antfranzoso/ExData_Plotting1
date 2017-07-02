source("loadDataset.R")

plot(data$Datetime, data$Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab = "")
lines(data$Datetime, data$Sub_metering_1, col = "black")
lines(data$Datetime, data$Sub_metering_2, col = "red")
lines(data$Datetime, data$Sub_metering_3, col = "blue")
legend(
  "topright",
  col = c("black", "red", "blue"),
  lty = c(1, 1, 1),
  legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
  cex = 0.5
)

#Save the plot as png file
dev.copy(png, "plot3.png", width = 480, height = 480, units = "px")
dev.off()