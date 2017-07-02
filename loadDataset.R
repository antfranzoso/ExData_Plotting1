#We assume the dataset is in your WS and it's named "household_power_consumption.txt"
filename = "household_power_consumption.txt"

#Get the column names
colnames <-
  read.table(filename,
             nrows = 1,
             sep = ";",
             stringsAsFactors = FALSE)

#Get the start and the end index to load only the needed data
startIndex <- grep("1\\/2\\/2007", readLines(filename))[1] - 1
rowsNumber <-
  grep("3\\/2\\/2007", readLines(filename))[1] - 1 - startIndex

# Get the data
data <-
  read.table(
    file = filename,
    stringsAsFactors = FALSE,
    na.strings = "?",
    skip = startIndex,
    nrows = rowsNumber,
    sep = ";",
    col.names = colnames
  )

#Add a datetime column
data <-
  transform(data, Datetime = strptime(paste(Date, Time), "%d/%m/%Y %H:%M:%S"))