# Set seed for reproducibility
set.seed(123)

# Create a list of random numbers in normal distribution
random_numbers <- rnorm(100, mean = 0, sd = 1)

# Count occurrences of each value
occurrences <- table(random_numbers)

# Print the list and occurrences
print("List of Random Numbers:")
print(random_numbers)

print("Occurrences of Each Value:")
print(occurrences)
