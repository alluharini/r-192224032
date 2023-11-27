# Assuming you have a dataset named 'chickendata'
# You can replace 'chickendata' with your actual dataset

# Sample dataset creation
chickendata <- data.frame(
  Weight = c(67, 122, 112, 93, 116, 99, 98, 93, 115, 114, 107, 119, 121, 103, 97, 103, 104, 105, 107, 124),
  Time = c(1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2),
  Diet = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2)
)

# Load required library for plotting
library(ggplot2)

# a. Box plot for "weight" grouped by "Diet"
boxplot_weight_diet <- ggplot(chickendata, aes(x = factor(Diet), y = Weight, fill = factor(Diet))) +
  geom_boxplot() +
  labs(title = "Box Plot of Weight Grouped by Diet",
       x = "Diet",
       y = "Weight",
       fill = "Diet")

print(boxplot_weight_diet)

# b. Histogram for "weight" features belonging to Diet-1 category
histogram_weight_diet1 <- ggplot(subset(chickendata, Diet == 1), aes(x = Weight)) +
  geom_histogram(binwidth = 5, fill = "lightblue", color = "black") +
  labs(title = "Histogram of Weight for Diet-1",
       x = "Weight",
       y = "Count")

print(histogram_weight_diet1)

# c. Scatter plot for "weight" vs "Time" grouped by Diet
scatter_plot_weight_time_diet <- ggplot(chickendata, aes(x = Time, y = Weight, color = factor(Diet))) +
  geom_point() +
  labs(title = "Scatter Plot of Weight vs Time Grouped by Diet",
       x = "Time",
       y = "Weight",
       color = "Diet")

print(scatter_plot_weight_time_diet)
