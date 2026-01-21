#Q3) User-defined function for Skewness and estimate values
# User-defined skewness function
skewness_fn <- function(x) {
  mean_x <- mean(x)
  median_x <- median(x)
  sd_x <- sd(x)
  skew <- 3 * (mean_x - median_x) / sd_x
  return(skew)
}

# Example data
data <- c(2, 3, 4, 5, 10)

# Calculate skewness
skewness_fn(data)



#Q4) User-defined function for Kurtosis and estimate values
# User-defined kurtosis function
kurtosis_fn <- function(x) {
  n <- length(x)
  mean_x <- mean(x)
  sd_x <- sd(x)
  kurt <- sum((x - mean_x)^4) / (n * sd_x^4)
  return(kurt)
}

# Example data
data <- c(2, 3, 4, 5, 10)

# Calculate kurtosis
kurtosis_fn(data)
