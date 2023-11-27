# Create a 5x4 matrix filled by rows
matrix_by_rows <- matrix(1:20, nrow = 5, ncol = 4, byrow = TRUE, dimnames = list(c("R1", "R2", "R3", "R4", "R5"), c("C1", "C2", "C3", "C4")))

# Create a 3x3 matrix with labels and fill it by columns
matrix_by_columns <- matrix(21:29, nrow = 3, ncol = 3, byrow = FALSE, dimnames = list(c("R1", "R2", "R3"), c("C1", "C2", "C3")))

# Display matrices
print("5x4 Matrix Filled by Rows:")
print(matrix_by_rows)

print("3x3 Matrix Filled by Columns:")
print(matrix_by_columns)
