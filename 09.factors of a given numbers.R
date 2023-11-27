# Function to find factors of a given number
find_factors <- function(n) {
  factors <- which(n %% 1:n == 0)
  return(factors)
}

# Find factors of a given number (e.g., 36)
factors_of_36 <- find_factors(36)

# Display the result
print("Factors of 36:")
print(factors_of_36)
