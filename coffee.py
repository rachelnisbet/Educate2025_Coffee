# Add packages
import pandas as pd
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt
from scipy.stats import f_oneway


# Load the dataset
# Reminder that your file path might be a little different!
df = pd.read_csv("/workspaces/myfolder/Educate2025_Coffee/global_coffee_productivity.csv")

# Display summary statistics
print("Summary Statistics:")
print(df.describe())


# One-way ANOVA
group_US = df[df['Country'] == 'USA']['Coffee_Consumption']
group_AU = df[df['Country'] == 'Australia']['Coffee_Consumption']
group_DE = df[df['Country'] == 'Germany']['Coffee_Consumption']
group_SK = df[df['Country'] == 'South Korea']['Coffee_Consumption']
group_JP = df[df['Country'] == 'Japan']['Coffee_Consumption']
group_BR = df[df['Country'] == 'Brazil']['Coffee_Consumption']
group_FR = df[df['Country'] == 'France']['Coffee_Consumption']
group_UK = df[df['Country'] == 'UK']['Coffee_Consumption']
group_CA = df[df['Country'] == 'Canada']['Coffee_Consumption']
group_IN = df[df['Country'] == 'India']['Coffee_Consumption']
f_stat, p_value = f_oneway(group_US, group_AU, group_BR, group_CA, group_DE, group_FR, group_IN, group_JP, group_SK, group_UK)

print("One-way ANOVA Results:")
print(f"F-statistic: {f_stat:.2f}")
print(f"P-value: {p_value:.4f}")
