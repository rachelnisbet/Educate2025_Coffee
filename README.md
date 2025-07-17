# SAS Educate 2025: Exploring Versatility with SAS Viya Workbench for Learners

We'll use the *global_coffee_productivity.csv* dataset to explore multi-language analytics workflows across SAS, Python, and R—inside both VS Code and JupyterLab.

##### Data Dictionary: `global_coffee_productivity.csv`

| **Variable**           | **Description**                                                             | **Type**     | **Example Values**                      |
|------------------------|------------------------------------------------------------------------------|--------------|------------------------------------------|
| `Country`              | Country where the respondent is located                                     | Categorical  | USA, Germany, Japan                      |
| `Job_Role`             | Professional role or job title of the individual                            | Categorical  | Product Manager, Designer, Data Scientist|
| `Work_From_Home`       | Whether the respondent works remotely or not                                | Binary       | Yes, No                                  |
| `Coffee_Consumption`   | Average cups of coffee consumed per day                                     | Continuous   | 0.1, 3.44, 5.23                           |
| `Productivity_Score`   | Self-reported productivity score (0–100 scale)                              | Continuous   | 65.35, 88.85, 100                        |
| `Sleep_Hours`          | Average number of sleep hours per night                                     | Continuous   | 4.8, 7.2, 8.9                            |
| `Stress_Level`         | Self-reported stress level (likely on a scale 1–10)                         | Ordinal      | 1, 6, 10                                 |
| `Age_Group`            | Age range of the respondent                                                  | Categorical  | 18–25, 26–35, 46–60                      |



**1. Launch Workbench for Learners**
* Log in to Workbench for Learners (WFL).
*	If you don’t already have a workbench, create one and start it.
*	From the dashboard, choose Visual Studio Code as your IDE. This opens a new tab with the VS Code interface tailored for Viya learners.

**2.	Get Oriented in VS Code**
*	VS Code in WFL includes integrated panels for:
    * Files – Where your cloned repo and editable files live.
    * GitHub – Direct access to version control and collaborative development.
    * Libraries – Explore Python or R libraries installed in your environment.
*	This open-source IDE is a favorite for its modularity, fast performance, and strong ecosystem.

**3.	Load Your Project**
*	From the VS Code terminal, run: `git clone https://github.com/rachelnisbet/Educate2025_Coffee.git`
*	This clones your project into the file system. You'll now see the folder appear in the Files sidebar with all your code files ready to go.

**4.	Start with SAS**
*	This is a SAS event – of course we are going to start with the SAS file, which is home to many of us.
*  From your Coffee folder, open *coffee.sas*
*	In this program:
    * Import the data
    * Remove any rows with missing values
    * Compute summary statistics for all numeric variables
    * Create a bar chart of Coffee Consumption by Country.

**5.	Move to Python**
*  Open *coffee.py*
*	The syntax looks quite different here, but let’s stay within the same mindset of diving into coffee consumption. 
*	In this program:
    * Load packages
    * Import data
    * Compute summary statistics for numeric variables
    * Run an ANOVA to see if there’s actually a difference between Coffee Consumption by Country
 	
With only two files, we’ve already started to understand more about our data and the participants of our study. Close out of the current VS Code window and navigate back to the Workbench page. We can stop our workbench whenever we aren’t using it to save compute power, cloud costs, etc..
But we aren’t actually done with our exploration!
Although it’s not very likely that one person will be using three different languages for analysis, let’s switch to another workbench – one special for SAS and R – to continue.

**6.	Explore the R script**
*	Use the drop down to select Launch VS Code – SAS and R.
*	Even though this is technically a different space, we still have the same view – including the files we brought in previously!
*	Open the *coffee.r* file.
*	In this program:
    * Load packages
    * Import data
    * View summary statistics and variable details
    * Compute Average Productivity by Job Role
    * Display frequencies for Job Role and Work from Home Status
    * Run a T-Test for Work from Home Status and Productivity

Nice — there are clear similarities across these files that let us compare how each language approaches the same task. But we’re also seeing unique traits emerge, especially in how the outputs are styled and presented. 
However, for someone who is new, these files might create more questions than answers. So, let’s start utilizing Notebooks, which are great for storytelling and teaching.

**7.	Embrace the Notebook Format**
*	Open the SAS Notebook (*coffee_SAS.sasnb*) in VS Code. Notebooks are ideal for teaching and storytelling.
*	Notice how we are markdown cells between the code blocks, which provide explanation and context for what we’re doing.
*	In this notebook:
    * Import the data (just in case you haven’t already)
    * Perform a T-Test on Productivity and Work From Home Status
    * Run an ANOVA for Productivity by Job Role
    * Run another ANOVA for Productivity and Age Group
    * Segment participants into clusters

Aren’t notebooks super cool?? Yes, we can continue using notebooks here; however, JupyterLab was created entirely for notebooks, so let’s jump there.
To do this, close out of your current VS Code window, go back to the Workbench page, and using the dropdown, select Launch JupyterLab – Python and R. This gives you:
*	A clean and notebook-native interface
*	Split views for multiple notebooks, terminals, and file explorers
*	Visually appealing output for graphs and charts

**8.	R in JupyterLab**
*	If you aren't already there, dial into the Educate2025_Coffee folder in your files. Open the *coffee_R.ipynb*
*	Once again, revel in the ability to add titles, links, commentary – you name it – within the markdown cells to supplement the code analysis.
*	In this notebook:
    *	Load necessary packages
    *	Read the data
    *	Build a histogram to view overall Coffee Consumption
    *	Compute correlations for all numeric variables
    *	Enhance correlation matrix using graphics 
    *	Graph a scatterplot to dive into the relationship between Productivity and Sleep
 	
**9.	Python Notebook in JupyterLab** 
*	Let’s do some similar stuff here for comparison’s sake – but add some extras.
*	Open and view *coffee_Python.ipynb*
*	In this notebook:
    * Load packages
    * Read the data
    * Build a histogram for Sleep hours - with enhancements
    * Create a correlation matrix for Coffee Consumption, Productivity, Sleep, and Stress
    * Create a scatterplot to analyze if coffee affects productivity

**WOW!** Six files. Three languages. Two interfaces. One unified platform for open-source learning, exploration, and comparison. You’ve just built an incredibly flexible data science playground in SAS Viya Workbench for Learners!
