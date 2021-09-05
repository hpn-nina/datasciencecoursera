#Working on
# Part 3
# Write a function that takes a directory of data files and a threshold for complete cases and calculates the correlation between sulfate and nitrate for monitor locations where the number of completely observed cases (on all variables) is greater than the threshold. The function should return a vector of correlations for the monitors that meet the threshold requirement. If no monitors meet the threshold requirement, then the function should return a numeric vector of length 0. A prototype of this function follows
# For this function you will need to use the 'cor' function in R which calculates the correlation between two vectors. Please read the help page for this function via '?cor' and make sure that you know how to use it.
# You can see some example output from this function below. The function that you write should be able to approximately match this output. Note that because of how R rounds and presents floating point numbers, the output you generate may differ slightly from the example output. Please save your code to a file named corr.R. To run the submit script for this part, make sure your working directory has the file corr.R in it.

#This can be said to be a modified version of complete function due to my first intention with working on complete function is to run through all of it

corr <- function(directory, threshold = 0) {
    cr <- c()
    for(i in 1:332) {
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
        max_length <- length(file[, 'nitrate'])

        for (row in 1:max_length) {
            if (!is.na(file[row, 'nitrate']) & !is.na(file[row, 'sulfate'])) {
                count <- count + 1
            }
            if(count >= threshold & count > 0) {
                cr <- append(cr, cor(file[, "nitrate"], file[, "sulfate"], 
                    method = "pearson", use = "complete.obs"))
                #Early detect success
                break
            }
        }
        if(count >= threshold & count > 0) {
                cr <- append(cr, cor(file[, "nitrate"], file[, "sulfate"], 
                    method = "pearson", use = "complete.obs"))
        }
    }
    cr
}
