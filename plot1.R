source("loadDataset.R")

with(
  data,
  hist(
    Global_active_power,
    col = "red",
    main = "Global Active Power",
    xlab = "Global Active Power (kilowatts)"
  )
)

#Save the plot as png file
dev.copy(png, "plot1.png", width = 480, height = 480, units = "px")
dev.off()