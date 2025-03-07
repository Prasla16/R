library(readxl)  

marks <- read_excel("C:\\Users\\HP\\OneDrive\\Desktop\\R Pract\\marks.csv.xlsx")

colnames(marks)

print("Standard deviation of Marks A:")
print(sd(marks$Marks_A))

print("Variance of Marks A:")
print(var(marks$Marks_A))

C_VA <- (sd(marks$Marks_A) / mean(marks$Marks_A)) * 100
print("Coefficient of Variation for Marks A:")
print(C_VA)

C_VB <- (sd(marks$Marks_B) / mean(marks$Marks_B)) * 100
print("Coefficient of Variation for Marks B:")
print(C_VB)

if (C_VA < C_VB) {
  print("Marks A has less variation")
} else {
  print("Marks B has less variation")
}

