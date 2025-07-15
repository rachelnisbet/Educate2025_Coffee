# Add packages
import pandas as pd
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt
from statsmodels.formula.api import ols
import statsmodels.api as sm


# Load the dataset
df = pd.read_csv("/workspaces/storage/Coffee/global_coffee_productivity.csv")

# Display summary statistics
print("Summary Statistics:")
print(df.describe())


# Boxplot: Productivity Score by Stress Level and Work From Home
plt.figure(figsize=(12, 6))
sns.boxplot(data=df, x='Stress_Level', y='Productivity_Score', hue='Work_From_Home')
plt.title("Productivity Score by Stress Level and Work From Home Status")
plt.xlabel("Stress Level")
plt.ylabel("Productivity Score")
plt.legend(title="Work From Home")
plt.tight_layout()
plt.show()

# Two-way ANOVA
model = ols('Productivity_Score ~ C(Stress_Level) * C(Work_From_Home)', data=df).fit()
anova_table = sm.stats.anova_lm(model, typ=2)
print("Two-way ANOVA Results:")
print(anova_table)

