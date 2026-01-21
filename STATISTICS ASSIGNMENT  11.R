#1) User-defined function to plot frequencies (in R)

#A frequency plot usually means a bar plot or histogram based on frequencies.
plot_frequency <- function(data_vector) {
  freq <- table(data_vector)
  barplot(freq,
          col = "skyblue",
          main = "Frequency Plot",
          xlab = "Values",
          ylab = "Frequency")
}


x <- c(1, 2, 2, 3, 3, 3, 4, 4, 4, 4)
plot_frequency(x)

#2) Use of Simulations

#Simulation is a technique used to imitate real-world processes using random numbers.

#Uses of simulations

#To study complex systems where mathematical solutions are difficult

#To estimate probabilities

#To analyze risk and uncertainty

#To test statistical models

#To validate theoretical results

#Used in finance, engineering, healthcare, weather forecasting

# Example: Tossing a coin thousands of times using a computer instead of physically tossing it.




#3) Perform simulations to show the observed probability tends towards theoretical probability
#with increase in sample size.
#Example: Coin Toss Simulation

#Theoretical probability of getting Head = 0.5
#set.seed(1)

simulate_coin <- function(n) {
  tosses <- sample(c("H", "T"), n, replace = TRUE)
  mean(tosses == "H")
}

sample_sizes <- c(10, 50, 100, 500, 1000, 5000)

observed_prob <- sapply(sample_sizes, simulate_coin)

result <- data.frame(
  Sample_Size = sample_sizes,
  Observed_Probability = observed_prob
)

print(result)


#Conclusion

#As sample size increases,
#observed probability approaches theoretical probability (0.5)
#This demonstrates the Law of Large Numbers



#4) Monte-Carlo Simulation
#Monte-Carlo Simulation is a simulation technique that uses random sampling and repeated trials to solve problems.
#Key Characteristics
#Uses random numbers
#Repeated many times (iterations)
#Estimates unknown quantities (probability, mean, area, risk)

#Example: Estimating π (Pi)
n <- 10000
x <- runif(n)
y <- runif(n)

inside_circle <- (x^2 + y^2) <= 1
pi_estimate <- 4 * mean(inside_circle)

pi_estimate


#5) Limitations of Simulations
#Major Limitations
#Computationally expensive for large simulations
#Results depend on random number quality
#Cannot give exact results, only approximations
#Requires many iterations for accuracy
#Poorly designed models give misleading results
#Difficult to validate real-world assumptions

