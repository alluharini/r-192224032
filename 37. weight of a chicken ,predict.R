# Assuming you have a dataset named 'chickendata'
# You can replace 'chickendata' with your actual dataset

# Sample dataset creation
chickendata <- data.frame(
  Weight = c(67, 122, 112, 93, 116, 99, 98, 93, 115, 114, 107, 119, 121, 103, 97, 103, 104, 105, 107, 124),
  Time = c(1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2),
  Diet = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2)
)

# a. Create a multiple regression model
model <- lm(Weight ~ Time + Diet, data = chickendata)

# b. Predict weight for Time=10 and Diet=1
new_data <- data.frame(Time = 10, Diet = 1)
predicted_weight <- predict(model, newdata = new_data)

cat("Predicted Weight for Time=10 and Diet=1:", predicted_weight, "\n")

# c. Find the error in the model for the same
actual_weight <- chickendata$Weight[chickendata$Time == 10 & chickendata$Diet == 1]

error <- actual_weight - predicted_weight
cat("Error in the model:", error, "\n")
