install.packages("tidyverse")
library(tidyverse)

getwd()

# Load the dataset
basketball <- read.csv("Question2.csv")

# Rename columns to remove dots
colnames(basketball) <- gsub("\\.", "", colnames(basketball))  # Remove dots

# Select relevant columns and reshape the data for boxplot
college_basketball <- basketball |>
  filter(Status != "Professional") |>
  select(PointsPerGame, AssistsPerGame, ReboundsPerGame, GoalsMadePerGame) |>
  pivot_longer(cols = everything(), names_to = "Metric", values_to = "Value")



# Boxplot with upper quartile values

# Define the function to calculate and return the upper quartile (Q3)
upper_quartile <- function(x) {
  q3 <- quantile(x, 0.75) 
  return(data.frame(y = q3, label = round(q3, 1))) 
}

# Define the function to calculate and return the median
median_value <- function(x) {
  med <- median(x)  
  return(data.frame(y = med, label = round(med, 1)))  
}

#1. boxplot with just median value
ggplot(college_basketball, aes(x = Metric, y = Value)) +
  geom_boxplot(fill = "#1D428A", alpha = 0.7) + 
  labs(title = "Distribution of Performance Metrics Across Players", 
       x = "Performance Metric", y = "Value") +
  theme_minimal() +  
  theme(panel.grid.major.x = element_blank()) + # Remove vertical grid lines
  stat_summary(fun.data = median_value, geom = "text", 
               aes(label = round(..y.., 1)), 
               vjust = -0.5, 
               color = "white", size = 4)   # Add median values as text above the box


# 2. boxplot with just upper quartile
ggplot(college_basketball, aes(x = Metric, y = Value)) +
  geom_boxplot(fill = "#1D428A", alpha = 0.7) + 
  labs(title = "Distribution of Performance Metrics Across Players", 
       x = "Performance Metric", y = "Value") +
  theme_minimal() +  
  theme(panel.grid.major.x = element_blank()) +  
  stat_summary(fun.data = upper_quartile, geom = "text", 
               color = "black", size = 4, 
               vjust = -0.5, hjust = 1.8) 

# 3. boxplot with both median and upper quartile
ggplot(college_basketball, aes(x = Metric, y = Value)) +
  geom_boxplot(fill = "#1D428A", alpha = 0.7) +  
  labs(title = "Distribution of Performance Metrics Across Players", 
       x = "Performance Metric", y = "Value") +
  theme_minimal() +  
  theme(panel.grid.major.x = element_blank()) +  
  stat_summary(fun.data = upper_quartile, geom = "text", 
               color = "black", size = 4, 
               vjust = -0.5, hjust = 1.8) +
  stat_summary(fun = median, geom = "text", aes(label = round(..y.., 1)), 
               vjust = -0.5, color = "white", size = 4)

