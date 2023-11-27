# Load the USArrests dataset
data("USArrests")

# (i) a. Explore the summary of the dataset
summary(USArrests)

# (i) b. Print the state with the largest total number of rape
state_max_rape <- rownames(USArrests)[which.max(USArrests$Rape)]
cat("State with the largest total number of rape:", state_max_rape, "\n")

# (i) c. Print states with max & min crime rates for murder
state_max_murder <- rownames(USArrests)[which.max(USArrests$Murder)]
state_min_murder <- rownames(USArrests)[which.min(USArrests$Murder)]

cat("State with the max crime rate for murder:", state_max_murder, "\n")
cat("State with the min crime rate for murder:", state_min_murder, "\n")


# (ii) a. Find the correlation among the features
correlation_matrix <- cor(USArrests)
print("Correlation Matrix:")
print(correlation_matrix)

# (ii) b. Print states with assault arrests more than the median of the country
states_above_median_assault <- rownames(USArrests)[USArrests$Assault > median(USArrests$Assault)]
cat("States with assault arrests more than the median:", states_above_median_assault, "\n")

# (ii) c. Print states in the bottom 25% of murder
states_bottom_25_percent_murder <- rownames(USArrests)[USArrests$Murder < quantile(USArrests$Murder, 0.25)]
cat("States in the bottom 25% of murder:", states_bottom_25_percent_murder, "\n")


# Load required library for plotting
library(ggplot2)

# (iii) a. Histogram and density plot of murder arrests
histogram_density_plot <- ggplot(USArrests, aes(x = Murder)) +
  geom_histogram(aes(y = ..density..), binwidth = 1, fill = "lightblue", color = "black") +
  geom_density(alpha = 0.7, fill = "orange") +
  labs(title = "Histogram and Density Plot of Murder Arrests",
       x = "Murder Arrests",
       y = "Density")

print(histogram_density_plot)

# (iii) b. Scatter plot with color representing assault arrest rates
scatter_plot <- ggplot(USArrests, aes(x = UrbanPop, y = Murder, color = Assault)) +
  geom_point() +
  scale_color_gradient(low = "blue", high = "red") +
  labs(title = "Relationship between Murder Arrest Rate, Urban Population, and Assault Arrest Rate",
       x = "Urban Population (%)",
       y = "Murder Arrest Rate",
       color = "Assault Arrest Rate")

print(scatter_plot)

# (iii) c. Bar graph showing the murder rate for each state
bar_plot <- ggplot(USArrests, aes(x = rownames(USArrests), y = Murder)) +
  geom_bar(stat = "identity", fill = "lightcoral", color = "black") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  labs(title = "Murder Rate for Each State",
       x = "State",
       y = "Murder Rate")

print(bar_plot)
