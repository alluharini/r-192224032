# Create a vector of values
values_vector <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)

# Create a vector of dimensions
dimensions_vector <- c(3, 3)

# Provide names for each dimension
dim_names <- list(c("Row1", "Row2", "Row3"), c("Col1", "Col2", "Col3"))

# Create an array with names for each dimension
my_array <- array(values_vector, dim = dimensions_vector, dimnames = dim_names)

# Print the array
print(my_array)
