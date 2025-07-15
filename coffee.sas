/* Import the dataset */
proc import datafile="/workspaces/storage/Coffee/global_coffee_productivity.csv"
    out=coffee_data
    dbms=csv
    replace;
    getnames=yes;
run;

/* Clean missing values */
data coffee_clean;
    set coffee_data;
    if cmiss(of _all_) then delete;
run;

/* Summary statistics */
proc means data=coffee_clean n mean std min max maxdec=2;
    var Coffee_Consumption Productivity_Score Sleep_Hours Stress_Level;
run;

/* Bar chart: Coffee Consumption by Country */
proc sgplot data=coffee_clean;
    vbar Country / response=Coffee_Consumption stat=mean;
    title "Average Coffee Consumption by Country";
run;

/* Bar chart: Productivity Score by Job Role */
proc sgplot data=coffee_clean;
    vbar Job_Role / response=Productivity_Score stat=mean;
    title "Average Productivity Score by Job Role";
run;
