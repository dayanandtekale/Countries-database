show databases;
create database if not exists countries;
use countries;

#1)Write a SQL statement to create a simple table countries including columns country_id,country_name and region_id.

create table if not exists countries(
country_id VARCHAR(2),
country_name VARCHAR(40),
region_id decimal(10,0)
);
SELECT * FROM countries;

insert into countries(country_id,country_name,region_id)
values('1','India1','1000'),
('2','India2','2000');

 #2)Write a SQL statement to create a simple table countries including columns country_id,country_name and region_id which is already exists.
 
 CREATE TABLE IF NOT EXISTS countries ( 
COUNTRY_ID varchar(2),
COUNTRY_NAME varchar(40),
REGION_ID decimal(10,0)
);

#3)Write a SQL statement to create the structure of a table dup_countries similar to countries.

CREATE TABLE IF NOT EXISTS dup_countries
LIKE countries;

#4) Write a SQL statement to create a duplicate copy of countries table including structure and data by name dup_countries.

CREATE TABLE IF NOT EXISTS dup_countries
AS SELECT * FROM  countries;

#5)Write a SQL statement to create a table countries set a constraint NULL.

CREATE TABLE IF NOT EXISTS countries ( 
COUNTRY_ID varchar(2) NOT NULL,
COUNTRY_NAME varchar(40) NOT NULL,
REGION_ID decimal(10,0) NOT NULL
);

 #6)Write a SQL statement to create a table named jobs including columns 
 #job_id, job_title, min_salary, max_salary and check whether the 
 #max_salary amount exceeding the upper limit 25000.
 
 CREATE TABLE IF NOT EXISTS jobs ( 
JOB_ID varchar(10) NOT NULL , 
JOB_TITLE varchar(35) NOT NULL, 
MIN_SALARY decimal(6,0), 
MAX_SALARY decimal(6,0) 
CHECK(MAX_SALARY<=25000)
);

insert into jobs(JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY)
values('1','Tainee1','10000','25000'),
('2','Trainee2','15000','25000');

SELECT * FROM jobs;

 #7) Write a SQL statement to create a table named
 #countries including columns country_id, country_name and region_id and 
 #make sure that no countries except Italy, India and China will be entered in the table.
 
 
CREATE TABLE IF NOT EXISTS countries ( 
COUNTRY_ID varchar(2),
COUNTRY_NAME varchar(40)
CHECK(COUNTRY_NAME IN('Italy','India','China')) ,
REGION_ID decimal(10,0)
);

#8)Write a SQL statement to create a table named job_histry including columns employee_id, start_date, end_date, job_id and department_id and make sure 
#that the value against column end_date will be entered at the time of insertion to the format like '--/--/----'.

CREATE TABLE IF NOT EXISTS job_history ( 
EMPLOYEE_ID decimal(6,0) NOT NULL, 
START_DATE date NOT NULL, 
END_DATE date NOT NULL
);
#CHECK (END_DATE LIKE '--/--/----'), 
#JOB_ID varchar(10) NOT NULL, 
#DEPARTMENT_ID decimal(4,0) NOT NULL 


insert into job_history(EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID)
values('22','2018/12/2','2020/11/8','26','36');

SELECT * FROM job_history;

# 9) Write a SQL statement to create a table named countries including columns country_id,country_name and region_id and make sure that 
#no duplicate data against column country_id will be allowed at the time of insertion.

CREATE TABLE IF NOT EXISTS countries ( 
COUNTRY_ID varchar(2) NOT NULL,
COUNTRY_NAME varchar(40) NOT NULL,
REGION_ID decimal(10,0) NOT NULL,
UNIQUE(COUNTRY_ID)
);
SELECT * FROM countries;

#10 Write a SQL statement to create a table named jobs including columns
#job_id, job_title, min_salary and max_salary, and make sure that, the default 
#value for job_title is blank and min_salary is 8000 and max_salary is NULL will be 
#entered automatically at the time of insertion if no value assigned for the specified columns.

CREATE TABLE IF NOT EXISTS jobs ( 
JOB_ID varchar(10) NOT NULL UNIQUE, 
JOB_TITLE varchar(35) NOT NULL DEFAULT ' ', 
MIN_SALARY decimal(6,0) DEFAULT 8000, 
MAX_SALARY decimal(6,0) DEFAULT NULL
);

insert into jobs(JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY)
values('1','Tainee1','8000',' '),
('2','Trainee2','8000',' ');


  




              


