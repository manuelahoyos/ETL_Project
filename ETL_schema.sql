
CREATE TABLE wage_2009(
year INT NOT NULL,
state VARCHAR PRIMARY KEY,
high_wage FLOAT NOT NULL,
low_wage FLOAT NOT NULL,
high_2018 FLOAT NOT NULL,
low_2018 FLOAT NOT NULL
);

CREATE TABLE wage_2010(
year INT NOT NULL,
state VARCHAR PRIMARY KEY,
high_wage FLOAT NOT NULL,
low_wage FLOAT NOT NULL,
high_2018 FLOAT NOT NULL,
low_2018 FLOAT NOT NULL
);

CREATE TABLE education(
state VARCHAR PRIMARY KEY,
education_percent FLOAT NOT NULL
);

CREATE TABLE peace(
state VARCHAR PRIMARY KEY,
peace_percent FLOAT NOT NULL
);