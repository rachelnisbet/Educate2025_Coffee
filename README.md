# SAS Educate 2025: Exploring Versatility with SAS Viya Workbench for Learners

We'll use the global_coffee_productivity.csv dataset to explore multi-language analytics workflows across SAS, Python, and R—inside both VS Code and JupyterLab.
1. Launch Workbench for Learners
* Log in to Workbench for Learners (WFL).
*	If you don’t already have a workbench, create one and start it.
*	From the dashboard, choose Visual Studio Code as your IDE. This opens a new tab with the VS Code interface tailored for Viya learners.

2.	Get Oriented in VS Code
*	VS Code in WFL includes integrated panels for:
* Files – Where your cloned repo and editable files live.
* GitHub – Direct access to version control and collaborative development.
* Libraries – Explore Python or R libraries installed in your environment.
*	This open-source IDE is a favorite for its modularity, fast performance, and strong ecosystem.

3.	Load Your Project
*	From the VS Code terminal, run:
git clone https://github.com/rachelnisbet/Educate2025_Coffee.git
*	This clones your project into the file system. You'll now see the folder appear in the Files sidebar with all your code files ready to go.

4.	Start with SAS
*	This is a SAS event – of course we are going to start with the SAS file, which is home to many of us.
*	In this program:
o	Import the data
o	Remove any rows with missing values
o	Compute summary statistics
o	Create a bar chart of coffee consumption by country.

5.	Move to Python
*	The syntax looks quite different here, but let’s stay within the same mindset of diving into coffee consumption. 
*	In this program:
o	Load packages
o	Import data
o	Compute summary statistics
o	Run an ANOVA to see if there’s actually a difference between coffee consumption by country
With only two files, we’ve already started to understand more about our data and the participants of our study. Close out of the current VS Code window and navigate back to the Workbench page. We can stop our workbench whenever we aren’t using it to save compute power, cloud costs, etc..
But we aren’t actually done with our exploration!
Although it’s not very likely that one person will be using three different languages for analysis, let’s switch to another workbench – one special for SAS and R – to continue.
6.	Explore the R script
*	Use the drop down to select the Launch VS Code – SAS and R.
*	Even though this is technically a different space, we still have the same view – including the files we brought in previously!
*	Open the .R file.
*	In this program:
o	Load packages
o	Import data
o	Summary stats
o	Viewing Average Productivity by Job Role
o	Frequencies for Job Role and Work from Home Status
o	T-Test for Work from Home Status and Productivity

Nice—there are clear similarities across these files that let us compare how each language approaches the same task. But we’re also seeing unique traits emerge, especially in how the outputs are styled and presented. 
However, for someone who is new, these files might create more questions than answers. So, let’s start utilizing Notebooks, which are great for storytelling and teaching.

7.	Embrace the Notebook Format
*	Open the SAS Notebook (.sasnb) in VS Code. Notebooks are ideal for teaching and storytelling.
*	Notice how we are markdown cells between the code blocks, which provide explanation and context for what we’re doing.
*	In this notebook:
o	Importing the data (just in case you haven’t already)
o	ANOVA for Job vs WFH
o	T-Test
o	Clustering
Aren’t notebooks super cool?? Yes, we can continue using notebooks here; however, JupyterLab was created entirely for notebooks, so let’s jump there.
To do this, close out of your current VS Code window, go back to the Workbench page, and using the dropdown, select Launch JupyterLab – Python and R. This gives you:
*	A clean and notebook-native interface
*	Split views for multiple notebooks, terminals, and file explorers
*	Visually appealing output for graphs and charts

8.	R in JupyterLab
*	Once again, revel in the ability to add titles, links, commentary – you name it – within the markdown cells to supplement the code analysis.
*	In this notebook:
o	Load necessary packages
o	Read the data
o	Build a histogram
o	Correlation matrix?
o	Finish with a scatterplot
9.	Python Notebook alongside R in JupyterLab
*	Let’s do some similar stuff here for comparison’s sake – but add some extras.
*	In this notebook:
o	Load packages
o	Read the data
o	Build a histogram
o	Correlation matrix
o	Scatterplot
WOW! Six files. Three languages. Two interfaces. One unified platform for open-source learning, exploration, and comparison. You’ve just built an incredibly flexible data science playground in SAS Viya Workbench for Learners!
<img width="468" height="644" alt="image" src="https://github.com/user-attachments/assets/247b4be8-0136-49d7-8adf-2d3fe1d21a6c" />
