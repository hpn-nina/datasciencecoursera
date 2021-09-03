add2 <- function(x, y) {
    x + y
}

add2(4,5)

above10 <- function(x) {
    use <- x > 10
    x[use]
}

#Specifying default n
aboveN <- function(x,n = 10) {
    use <- x > n
    x[use]
}

x <- 1:20
above10(x)
aboveN(x)

columnMean <- function(y, removeNA = TRUE) {
    nc <- ncol(y) #Define the number of col
    means <- numeric(nc) #Defining mean as a vector that have the length of muber of column

    for(i in 1:nc) {
        means[i] <- mean(y[, i], na.rm = removeNA) 
    }

    means
}

columnMean(airquality)


#sd calculate the standard deviation
#Don't mess with the order too much
# The same naming goes with Python

