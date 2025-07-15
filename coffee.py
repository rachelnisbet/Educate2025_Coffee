import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns


# Load the dataset
df = pd.read_csv("/workspaces/storage/Coffee/global_coffee_productivity.csv")

# Display summary statistics
print("Summary Statistics:")
print(df.describe())

