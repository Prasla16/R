# Define the data
x <- c(123,120,134,139,140,145,150,155,158,162)
y <- c(63,54,56,64,75,81,88,90,95,76)

# Perform linear regression
relation <- lm(y ~ x)

# Print the summary of the regression model
print(summary(relation))

# Predict for x = 170
a <- data.frame(x = 170)
result <- predict(relation, a)
print(result)

# Save plot as PNG
png(file = "inear_regression.png")

# Create scatter plot
plot(x, y, col="red", main="Height & Weight Regression", 
     pch=16, cex=1.3, xlab="Weight in kg", ylab="Height in cm")

# Add regression line
abline(relation, col="blue")

dev.off()

