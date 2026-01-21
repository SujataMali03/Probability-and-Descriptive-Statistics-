#Q1) Import CSV & estimate 10th, 50th, 90th percentiles (after removing NA)
# Import CSV file
data <- read.csv("data.csv")

# Select one variable (example: marks)
x <- data$marks

# Remove NA values
x_clean <- na.omit(x)

# Percentiles
quantile(x_clean, probs = c(0.10, 0.50, 0.90))


#Q2) Plot a histogram using the data values of the same variable used above
hist(x_clean,
     main = "Histogram of Marks",
     xlab = "Marks",
     col = "lightblue",
     border = "black")

#Q3) Plot boxplot and check for outliers
boxplot(x_clean,
        main = "Boxplot of Marks",
        col = "lightgreen")

#Q4) Create boxplot for Method A, B, and C
# Data
method_A <- c(45,58,62,65,68,70,72,75,78,80,82,85,88,92,95,98,100,100,102,110)
method_B <- c(55,60,65,68,70,72,75,75,78,80,82,85,85,88,90,92,95,98,100,105)
method_C <- c(30,40,50,55,60,65,68,70,72,75,78,80,82,85,88,90,95,100,110,120)

# Combined boxplot
boxplot(method_A, method_B, method_C,
        names = c("Method A", "Method B", "Method C"),
        col = c("pink", "lightblue", "lightgreen"),
        main = "Comparison of Methods")

#Q5) Explain the result of Q4 comparatively
#Comparative Explanation (Write in exam)

#Method A:
 # Shows moderate spread with a slightly higher upper range. One or more high values indicate possible outliers.

#Method B:
 # Data is more consistent with smaller spread and fewer extreme values. It appears more stable.

#Method C:
 # Has the largest spread and extreme values on both lower and higher ends, indicating higher variability and presence of outliers.

