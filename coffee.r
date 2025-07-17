# Load necessary libraries
library(dplyr)
library(readr)

# Load the dataset
df <- read.csv("/workspaces/storage/Coffee/global_coffee_productivity.csv")

# View structure and summary
str(df)
summary(df)

# Count of records by country
country_counts <- df %>%
  count(Country, sort = TRUE)
print(country_counts)

# Average productivity by job role
avg_productivity_by_role <- df %>%
  group_by(Job_Role) %>%
  summarise(Average_Productivity = mean(Productivity_Score, na.rm = TRUE)) %>%
  arrange(desc(Average_Productivity))
print(avg_productivity_by_role)

# Linear Regression
model <- lm(Productivity_Score ~ Coffee_Consumption + Sleep_Hours + Stress_Level, data = df)
summary(model)
