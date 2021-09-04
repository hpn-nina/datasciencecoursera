#Done
# Part 1
# Write a function named 'pollutantmean' that calculates the mean of a pollutant (sulfate or nitrate) across a specified list of monitors. The function 'pollutantmean' takes three arguments: 'directory', 'pollutant', and 'id'. Given a vector monitor ID numbers, 'pollutantmean' reads that monitors' particulate matter data from the directory specified in the 'directory' argument and returns the mean of the pollutant across all of the monitors, ignoring any missing values coded as NA. A prototype of the function is as follows

pollutantmean <- function(directory, pollutant, id = 1:332) {
    total <- 0
    count <- 0

    for(i in 1:length(id)) {
        fullid <- 0

        if(id[i] < 10) {
            fullid <- paste('00', id[i], sep='')
        } else if (id[i] >= 10 & id[i] < 100) {
            fullid <- paste('0', id[i], sep='')
        } else {
            fullid <- id[i]
        }

        filePath <- paste(getwd(), '/',
                directory, '/', fullid, '.csv', sep='')
        file <- read.csv(filePath, header = TRUE, sep = ',')

        for (row in 1:length(file[, pollutant])) {
            if (!is.na(file[row, pollutant])) {
                total <- total + file[row, pollutant]
                count <- count + 1
            }
        }
    }
    meanValue <- total / count
    meanValue
}


