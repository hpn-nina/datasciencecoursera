
# Introduction
Hi this is a folder that contains basic knowledge for me to revise when I need it. Just small tiny note that help me remember things.

# Handy function

```{r}str()```
- To answer what is in this object, function
- If call on vector: see what is in this vector
- If call on factor: Can see the levels
- Call on data.frame will show column and what data is stored in these columns
- Just try and test

```{r}summary()```
- Sense of range, mean of the object
- If call on vector, it will show all the levels there are in the factors

```{r}split()```

# Simulation

## Normal distribution (Usual usage)
- Random normal distribution variates: Input(sd, mean)
```{r}rmorm()```

- Normal probability density: Input(sd, mean of a point (vectors of points))
```{r}dnorm()```

- Cumulative distribution function for a normal distribution evaluation 
```{r}pnorm()```

## Possion 
- Poisson variates with a given rate
```{r}rpois()```

## Generating random numbers

- d for density
- r for random number generation
- p for cumulative distribution
- q for quantile function

Important to set seed:
- Random appears random but it is pesudo only
- Should set seed differently (reset it when conducting a simulation) -> Seed is necessary for reproduce problem

## Random sampling

```{r}sample(1:10, n, replace = TRUE)```

- Draw random number from vectors of object given
- default will get a permutation if not specified any thing beside vectors


# Profiler in R
- Tool to figure out why our programme are running slow
- Optimizing tool
- Systematic way to examine how much time is spend in different parts of a program

- Should not be think at first, focus on other important thing first.
- Design first then optimize
- If you get a sense of it, you should collect data

1. ```{r}system.time()``` return an object of class proc_time
- Give times until the error occured
- User time: time CPU experince
- Elapsed time: our experience time
    Usually it is close 
    However it is not the case when it may spend less time running the code and wait more (elapsed > user time) and the oppose does happen when using multi-thearded library is used

- When read webpage elapsed > user (usually because of the connection)
- Can time longer expressions

- Useful for smaller program
- But need to know where the problem is

2. ```{r}Rprof()``` 
- Must be compiled with profiler support 
- The ```{r}summaryRprof()``` function summaries Rprof() in a more readable way.
- Should not be used with system.time()
- Keep track of the function call stack and regularly sample and tabulates how much time is spend in each function

3. ```{r}summaryRprof()```
- A advanced version of the above
- Calculates how much time is spend in which function

- by total: total amount of time spend in a function
- by self: after subtracting out all the sub-funciton -> More useful for bigger picture

- Should break your code into function so the profiler can be use more functional


