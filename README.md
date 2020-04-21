# ETL Project

## Overview:
Group Project in which the ETL process was used to analyze and compare population metrics and minimum wage data for all states during the years 2009 and 2010 using Python, Pandas, Matplolib, SQL and SQLAlchemy.


## Datasets:
- Extraction:
Our first dataset was retrieved from Kaggle.com. It displays the minimum wage "maximum and minimum" for each state in the United States during the years 1968 and 2017.
Our second dataset was retrieved from data.world.com. It displays 4 sociological metrics for all 50 states during different years. 



## Workflow:

A relational database called 'ETL_db’ was created in PostgresSQL pgAdmin 4 and the following commands were used to create the table schema. Four tables were created, and the column names and value types were specified. The ‘state’ column was set as the primary key in each table because it is present in all tables.

- Transformation:
Several transformations were made to each DataFrame in preparation to export them to the tables made in pgAdmin 4. 
The columns in the minimum wage DataFrame (and dataset) include 1. state, 2. year, 3. high value, or the highest value of the several minimum wage values found for one state during a single year, 4. low value, or the lowest value of the several minimum wage values found for one state during a single year, 5. high 2018 represents the 2018 equivalent in dollars for the high value 6. low 2018 represents the 2018 equivalent in dollars for the low value. The dataset file contains other columns, but we are only interested in the previously mentioned columns. Therefore, we create a new variable that holds the names for the columns of interest. Then a new DataFrame is created, which contains only the columns stored in the previous variable. A copy of the original DataFrame is made to create the second DataFrame to keep the original intact. The columns of this new DataFrame are renamed to the column names given in the SQL tables.

From the DataFrame ‘MinWage_df’, two Dataframes were made by filtering by the years 2009 and 2010. We selected the rows where ‘Year’ = 2009 because the percent of educational attainment in the ‘Metrics_df’ table was collected during this year. Similarly, we selected the rows where ‘Year’ = 2010 because the percent peace index for each state in the ‘Metrics_df’ table was collected during this year. Each DataFrame was then grouped by state. 

The metrics dataset contains the following columns 1. state, 2. percentage of educational attainment, which displays the number of of individuals that have earned a bachelor's degree or higher during 2009, 3. percent peace index, which is measured based on homicide, violent crime, policing, incarceration and availability of small arms rates; data was converted to percentages and the higher the % the "more peaceful" the state, 4. above poverty rate, or the number of households living above poverty level, converted into %, and 5. percent non-religious is the % of individuals that do not identify as "highly religious.”




For our first DataFrame, we extracted the percentage of educational attainment in 2009 and state columns. For our second DataFrame, we extracted  the percent peace index in 2010 and state columns. The ‘sate’ column was set as the index, allowing all tables to be joined by this column. 

- Load:

A connection called ‘engine’ was created to connect to PostgresSQL pgAdmin 4, and the table column names was confirmed. 

-SQL queries:

After the DataFrames were uploaded into the pgAdmin 4 tables, joined tables were made. 

The following query joins tables ‘wage_2009’ and  ‘education’ at the primary key for each table, which is ‘state.’
All the columns for table wage_2009  are shown, as well as column ‘education_percent’ from table education.



## Observations:

Educational attainment and minimum wage were unrelated during the year 2009. The state with the highest minimum wage was Washington (8.55/hour, equivalent to 9.98/hour in 2018). However, this state was not the state with the highest % of education attainment during that same year. Moreover, the state with the lowest minimum wage value was Oklahoma (2.00/hour, equivalent to 2.33/hours in 2018). Similarly, this is not the state with the lowest % of educational attainment.

![Image description](Images/comb_MaxAndMin_educ.png.png)


Peace percent and minimum wage were unrelated during the year 2010. The state with the highest minimum wage was Washington (8.55/hour, equivalent to 9.82/hour in 2018). However, this state was not the state with the highest peace % during that same year. Moreover, the state with the lowest minimum wage value was Oklahoma (2.00/hour, equivalent to 2.30/hours in 2018). Similarly, this is not the state with the lowest peace %


![Image description](Images/comb_MaxAndMin_peace.png)