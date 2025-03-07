create_matrix = function(name) {
  print(paste("Enter rows for", name, ": ")); rows = as.integer(readline())
  print(paste("Enter cols for", name, ": ")); cols = as.integer(readline())
  
  elements = c()
  for (i in 1:(rows * cols)) {
    print(paste("Enter element", i, ": ")); elements = c(elements, as.integer(readline()))
  }
  
  matrix(elements, nrow = rows, ncol = cols, byrow = TRUE)
}

print("Matrix A:"); A = create_matrix("A"); print(A)
print("\nMatrix B:"); B = create_matrix("B"); print(B)

if (all(dim(A) == dim(B))) { print("\nA + B:"); print(A + B) 
} else { print("\nAddition not possible.") }

print("\nTranspose of A:"); print(t(A))

if (nrow(A) == ncol(A) && det(A) != 0) { 
  print("\nInverse of A:"); print(solve(A)) 
} else { print("\nA is not invertible.") }

if (ncol(A) == nrow(B)) { 
  print("\nA * B:"); print(A %*% B) 
} else { print("\nMultiplication not possible.") }

