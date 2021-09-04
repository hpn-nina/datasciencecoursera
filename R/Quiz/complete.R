#Done
# Part 2
# Write a function that reads a directory full of files and reports the number of completely observed cases in each data file. The function should return a data frame where the first column is the name of the file and the second column is the number of complete cases. A prototype of this function follows


complete <- function(directory, id = 1:332) {

    no <- 1:length(id)
    nobs <- c()

    for(i in id) {

        fullid <- 0
        if(i < 10) {
            fullid <- paste('00', i, sep='')
        } else if (i >= 10 & i < 100) {
            fullid <- paste('0', i, sep='')
        } else {
            fullid <- i
        }

        filePath <- paste(getwd(), '/',
                directory, '/', fullid, '.csv', sep='')
        file <- read.csv(filePath, header = TRUE, sep = ',')

        count <- 0
        for (row in 1:length(file[, 'nitrate'])) {
            if (!is.na(file[row, 'nitrate']) & !is.na(file[row, 'sulfate'])) {
                count <- count + 1
            }
        }
        nobs <- append(nobs, count)
    }
    form.data <-data.frame(no, id, nobs)
}

