#Q1) Use nested functions to estimate Range in R
#Definition
#Range = Maximum value − Minimum value

#Sample data
data <- c(12, 15, 18, 20, 22, 25, 30)
#Nested function to calculate Range
range_value <- max(data) - min(data)
range_value


#Q2) Estimate IQR using sample data and nested function
 #   IQR=Q3−Q1
#Sample data
sample_data <- c(10, 12, 14, 15, 18, 20, 22, 25)


#Nested function for IQR
iqr_value <- quantile(sample_data, 0.75) - quantile(sample_data, 0.25)
iqr_value



#Q3) Estimate Covariance, Variance, Standard Deviation, and Correlation using nested functions
#Sample data
x <- c(5, 10, 15, 20, 25)
y <- c(7, 14, 18, 24, 30)


#Variance
var_x <- var(x)
var_y <- var(y)

#Standard Deviation
sd_x <- sd(x)
sd_y <- sd(y)

#Covariance
cov_xy <- cov(x, y)

#Correlation Coefficient
cor_xy <- cov(x, y) / (sd(x) * sd(y))
cor_xy

#Q4) Explain the working of the following R code
cv_percent <- (sd(dataset) / mean(dataset)) * 100

#Explanation
#sd(dataset) calculates standard deviation
#mean(dataset) calculates mean
#The ratio sd / mean gives coefficient of variation
#Multiplying by 100 converts it into percentage

#Interpretation
#CV measures relative variability
#Higher CV → more dispersion in data
#Lower CV → data is more consistent

#Q5) Explain the working of the following R code
z_scores <- (observations - median(observations)) / mad(observations)

#Explanation
#median(observations) finds the median
#mad(observations) finds Median Absolute Deviation
#Each value is:𝑋−Median/MAD
​

#Interpretation
#This calculates robust Z-scores
#Less affected by outliers
#Used when data is not normally distributed