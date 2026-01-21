#Q1) Either create a data set with 2 variables using c() or import a .csv file to load data into R
#studio environment.
# Create data
x <- c(10, 20, 30, 40, 50)
y <- c(15, 25, 35, 45, 55)

data <- data.frame(x, y)
data
data <- read.csv("data.csv")
head(data)

#Q2) Write a code to run a simple linear regression using the above-mentioned functions
# Simple linear regression
model <- lm(y ~ x, data = data)
model

#Q3) Display coefficients and interpret results
   summary(model)
#Output gives:
  # Intercept (β₀) =5 
  #Slope (β₁) = 1 
   #Residuals = 0 

#Q4) Predict values for multiple data points
# New data points
new_data <- data.frame(x = c(60, 70, 80))

# Prediction
predict(model, new_data)

#Q5) Show manual calculation of predicted value
    #y^​=β0​+β1​x
#Example (assume):
  # Intercept = 5
  #Slope = 1
  #For x = 60:
#y^​=5+1(60)=65
# Using the estimated coefficients, the predicted value is calculated by substituting the x-value in the regression equation.

