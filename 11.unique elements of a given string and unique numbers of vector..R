# Create a string
example_string <- "programming"

# Get unique elements of the string
unique_chars <- unique(strsplit(example_string, NULL)[[1]])

# Create a vector
example_vector <- c(1, 2, 3, 2, 4, 1, 5, 6, 3, 7)

# Get unique elements of the vector
unique_numbers <- unique(example_vector)

# Display the results
print("Unique Elements of the String:")
print(unique_chars)
print("Unique Elements of the Vector:")
print(unique_numbers)
