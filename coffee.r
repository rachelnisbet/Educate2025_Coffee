# Load necessary libraries
library(dplyr)
library(readr)

# Load the dataset
df <- read.csv("/workspaces/myfolder/Educate2025_Coffee/global_coffee_productivity.csv")

# View structure and summary
str(df)
print(summary(df))

# Average productivity by job role
avg_productivity_by_role <- df %>%
  group_by(Job_Role) %>%
  summarise(Average_Productivity = mean(Productivity_Score, na.rm = TRUE)) %>%
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
