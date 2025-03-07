data <- read.csv("C:/users/syz/data.csv")  
head(data)

cat("The average age of shopping trends:", mean(data$Age), "\n")

cat("The median age of shopping trends:", median(data$Age), "\n")

get_mode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

cat("The mode of the given data is:", get_mode(data$Age), "\n")

R <- max(data$Age) - min(data$Age)
cat("Range =", R, "years\n")

IQR_value <- quantile(data$Age, 0.75) - quantile(data$Age, 0.25)
cat("The interquartile range =", IQR_value, "years\n")

hist(data$Age, 
     xlab = "Age", 
     main = "Distribution of Shopping Trends by Age",
     col = "green", 
     border = "black",
     xlim = c(1, 80), 
     ylim = c(0, 800),  
     breaks = 5)        

