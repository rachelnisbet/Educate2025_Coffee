# Load necessary libraries
library(dplyr)
library(readr)

# Load the dataset
# Update the path below to point to where your dataset lives
df <- read.csv("/workspaces/myfolder/Educate2025_Coffee/global_coffee_productivity.csv")

# View structure and summary statistics
str(df)
print(summary(df))

# Average productivity by job role
avg_productivity_by_role <- df |>
  group_by(Job_Role) |>
  summarise(Average_Productivity = mean(Productivity_Score, na.rm = TRUE)) |>
  arrange(desc(Average_Productivity))
print(avg_productivity_by_role)


# Create and view a frequency table to for Job Roles and Work From Home Status
table_counts <- table(df$Work_From_Home, df$Job_Role)
print(table_counts)


# Data prep for the t-test
df$Work_From_Home <- as.factor(df$Work_From_Home)

# --- T-TEST: Work From Home vs Productivity ---
t_test_result <- t.test(Productivity_Score ~ Work_From_Home, data = df)
print("T-Test: Productivity by Work From Home Status")
print(t_test_result)


# Convert 'Country' to a factor if it's not already
df$Country <- as.factor(df$Country)

# Run one-way ANOVA
anova_result <- aov(Coffee_Consumption ~ Country, data = df)

# Display summary of the ANOVA
print(summary(anova_result))