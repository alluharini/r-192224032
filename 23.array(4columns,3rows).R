# Create data for the array
data_table1 <- matrix(1:12, ncol = 4, byrow = TRUE)
data_table2 <- matrix(13:24, ncol = 4, byrow = TRUE)

# Create a 3D array using the two tables
my_array <- array(c(data_table1, data_table2), dim = c(3, 4, 2))

# Display the content of the array
print(my_array)
