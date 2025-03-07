
library(readxl)
data = read_excel("C:\\Users\\HP\\OneDrive\\Desktop\\R Pract\\Book1.xlsx")

# Display the first few rows of the dataset
head(data)

# Compute correlation between columns 'x' and 'y'
r <- cor(data$x, data$y)

# Print correlation value
print(paste("The correlation between x and y:", r))

# Check if correlation is positive or negative
if (r > 0 && r <=1 ) {
  print("The correlation is positive")
} else {
  print("The correlation is negative")
}

