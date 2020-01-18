SELECT * FROM wage_2009;
SELECT * FROM wage_2010;
SELECT * FROM education;
SELECT * FROM peace;


-- Query to check successful load
SELECT * FROM premise;

SELECT * FROM county;

-- Join tables on state
SELECT wage_2009.year, wage_2009.state, wage_2009.high_wage, wage_2009.low_wage, 
wage_2009.high_2018, wage_2009.low_2018, education.state, education.education_percent 
FROM wage_2009
JOIN education
ON wage_2009.state = education.state;

SELECT wage_2010.year, wage_2010.state, wage_2010.high_wage, wage_2010.low_wage, 
wage_2010.high_2018, wage_2010.low_2018, peace.peace_percent 
FROM wage_2010
JOIN peace
ON wage_2010.state = peace.state;