# Load necessary package
library(dplyr)

head(iris)
selected_data <- iris %>% select(Sepal.Length,Sepal.Width)

glimpse(selected_data)

