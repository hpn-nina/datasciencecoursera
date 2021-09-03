# Introduction
Hi, this is named datasciencecoursera although I do all type of work here, playing around and to be exact it contains all of mine study starting in Data field. 
There are all types of  learning here and you may find sth critical to your study. SO LET'S GET STARTED.
## This is a markdown file
What is R?
R was originally named after S language which was used as an internal statistical analysis

Interactive env to not see themselves as programming. Can do basic calculation, learning gradually, then transition.

1993: First announcement

## Features of R
- Syntax is very similar to S
- Semantics are superfically similar to S
- Divided into modular packages
- Graphics capabilities very sophisticated and better than most stat packages
- Useful for interactive work, but contains a powerful programming tool 
##Drawback
- Little built in support for dynamic or 3-D graphics 
- Not ideal for all possible situations especially with big data
- Objects that is manipulated need to be stored in physical memory
- It's a one-based indexing language

##Design
Divided into 2 conceptual parts
1. The base R system that you download from CRAN
2. Everything else

# Get help
1. Through email
2. Discussion board
3. On the mailing list

- Searching on archive before asking on forum 
- Reading the mannual
- Before venturing try ask your circle first

## Asking question
- Let people know what you have done before asking
- Example:
    Error Message
    1. Search google first
    2. Steps to reproduce the problem
    3. State what you want your output to be
    4. What version of R, packages
    5. Operating system
    6. Additional Info 

- Subject Headers: Adding on the needed information
- What to do?
    + Describe the goal not the step
    + Be explicit, clearly and in detail
    + Follow up with the solution (if found)
    + Provide minimum amount of data
- What is not to do?
    + Claim to found a bug
    + Don't ask about your homework
    + Email multiple mailing lists at once
    + Ask others to debug your broken code without explicit info

- What went wrong?
    + Do not be vague in your question
    + No evidence for the former work
    + For noob, ask on R-help not R-dev. r-help@r-project.org


## Connection to the Outside World
- Connection interface, can be made to files or to webpage

1. file opens a connection to a file. Text file
2. gzfile opens a connection to a file compressed with gzip -> gz extension
3. bzfile opens a connection to a file compressed with bzip2 -> bzip2 extension
4. url opens connection to a webpage

r for reading
w for writing
a for appending
rb, wb, ab for those above in binary mode

```{r}
con <- file("foo.txt", "r")
data <- read.csv(con)
close(con)

The same with 
data <- read.csv("foo.txt")
```
- So in the former example it is not that necessary to use the connection. Although in case like below, it can be helpful

```{r}
con <- gzfile("words.gz")
x <- readLines(con, 10) #Read the first 10 lines
x
```

# Coding Standard
- Indenting your code
- Limit the width of your code (80 columns)
- Write your code under text type file
- Limit the length of particular function
- Function should only do what they say they are



