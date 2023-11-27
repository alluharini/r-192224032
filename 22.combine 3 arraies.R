# Create three example arrays
array1 <- matrix(1:3, ncol = 3)
array2 <- matrix(4:6, ncol = 3)
array3 <- matrix(7:9, ncol = 3)

# Combine arrays vertically
combined_array <- rbind(array1, array2, array3)

# Display the combined array
print(combined_array)
