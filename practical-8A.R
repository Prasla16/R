df=data.frame(hours=c(3,4,5,6,7,8),
score=c(56,67,78,50,60,70))
head(df)
fit<-lm(score~hours,data=df)
print(summary(fit))
plot(df$hours,df$score,pch=19,xlab='hours',ylab='score')
abline(fit)
