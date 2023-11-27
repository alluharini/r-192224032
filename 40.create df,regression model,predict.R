# Part a: Create a data frame
data <- data.frame(
  Month = 1:12,
  Spends = c(1000, 4000, 5000, 4500, 3000, 4000, 9000, 11000, 15000, 12000, 7000, 3000),
  Sales = c(9914, 40487, 54324, 50044, 34719, 42551, 94871, 118914, 158484, 131348, 78504, 36284)
)

# Part b: Create a regression model
model <- lm(Sales ~ Spends, data = data)

# Part c: Predict Sales for Spend=13500
spend_to_predict <- data.frame(Spends = 13500)
predicted_sales <- predict(model, newdata = spend_to_predict)

# Print the predicted sales
cat("Predicted Sales for Spend=13500:", predicted_sales, "\n")
