library(moments)
library(datasets)
data=cars
head(data)
print("skewness of speed of cars")
s=skewness(data$speed)
print(s)
print("kurtosis of speed of cars")
s=kurtosis(data$speed)
print(s)
x=density(data$speed)
plot(x)

print("skewness of distance of cars")
b=skewness(data$dist)
print(s)
print("kurtosis of distance of cars")
a=kurtosis(data$dist)
print(s)
y=density(data$dist)
plot(y)
