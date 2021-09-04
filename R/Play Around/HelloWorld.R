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

#Lazy evaluation
# Only evaluated as needed

# ... args
# Extending a variable number of args that are usually passed on to other functions

myplot <- function(x, y, type = "1", ...) {
    plot(x, y, type = type, ...)
}

# Generic function so that extra arguments cna be passed to methods 
# args after ... must be named explicitly and can not be partial matching

lm <- function(x) x*x
lm

#R need to bind a value to a symbol so it searches through a series of env to find the approriate value
search()
[1] ".GlobalEnv"        "tools:vscode"      "package:stats"
[4] "package:graphics"  "package:grDevices" "package:utils"    
[7] "package:datasets"  "package:methods"   "Autoloads"
[10] "package:base"

