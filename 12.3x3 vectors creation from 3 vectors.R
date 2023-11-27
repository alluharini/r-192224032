# Create three vectors
a <- c(1, 4, 7)
b <- c(2, 5, 8)
c <- c(3, 6, 9)

# Combine the three vectors into a 3x3 matrix
combined_matrix <- matrix(c(a, b, c), nrow = 3, byrow = TRUE, dimnames = list(NULL, c("a", "b", "c")))

# Display the content of the matrix
print("Combined 3x3 Matrix:")
print(combined_matrix)
