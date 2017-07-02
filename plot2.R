source("loadDataset.R")

plot(data$Datetime,
     data$Global_active_power,
     type = "l",
     ylab = "Global Active Power (kilowatts)",
     xlab = ""
     )

#Save the plot as png file
dev.copy(png, "plot2.png", width = 480, height = 480, units = "px")
dev.off()