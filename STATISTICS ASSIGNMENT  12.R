#Q5) Write properties and plot the distributions in R
#a) Bernoulli Distribution

#Explanation
#Bernoulli distribution describes an experiment with only two possible outcomes:
#Success (1)
#Failure (0)
#Each trial is independent and has the same probability of success.
#Properties
#Possible values: 0 and 
x <- c(0, 1)
p <- c(0.7, 0.3)
barplot(p,
        names.arg = x,
        main = "Bernoulli Distribution",
        xlab = "Outcome",
        ylab = "Probability",
        col = "lightblue")


#b) Binomial Distribution
#Explanation
#Binomial distribution gives the probability of getting a fixed number of successes in n independent Bernoulli trials.
x <- 0:10
y <- dbinom(x, size = 10, prob = 0.5)

barplot(y,
        names.arg = x,
        main = "Binomial Distribution",
        xlab = "Number of Successes",
        ylab = "Probability",
        col = "lightgreen")



#c) Poisson Distribution
#Explanation
#Poisson distribution models the number of times an event occurs in a fixed interval of time or space when events occur randomly and independently.
x <- 0:15
y <- dpois(x, lambda = 4)

barplot(y,
        names.arg = x,
        main = "Poisson Distribution",
        xlab = "Number of Events",
        ylab = "Probability",
        col = "orange")


#d) Normal Distribution
#Explanation
#Normal distribution is a continuous, symmetric, bell-shaped distribution widely used in statistics and data science.
x <- seq(-4, 4, by = 0.1)
y <- dnorm(x, mean = 0, sd = 1)

plot(x, y,
     type = "l",
     main = "Normal Distribution",
     xlab = "x",
     ylab = "Density",
     col = "blue")





