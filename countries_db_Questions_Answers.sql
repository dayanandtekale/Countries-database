#QUESTIONS:   
#1. Write a query in SQL to display all the information of the employees.
select * from employees;

#2. Write a query in SQL to find the salaries of all employees
select salary from employees;

#3. Write a query in SQL to display the unique designations for the employees.
select job_name from employees;
select distinct job_name from employees;

#4. Write a query in SQL to list the emp_name and salary is increased by 15% and expressed as no.of Dollars. 
select emp_name as "Employee Name", concat('$',salary*1.15) as "Salary" from employees;

#5. Write a query in SQL to produce the output of employees name and job name as a fromat of "Employee & Job"
select concat(emp_name,' ',job_name) as "Employee & Job" from employees;

#6. Write a query in SQL to produce the output of employees as follows. Employee & Job JONAS(manager).
select concat(emp_name,'(',lower(job_name),')') as "Employee & Job" from employees;

#7. Write a query in SQL to list the employees with Hire date in the format like February 22, 1991. 
select emp_name,date_format(hire_date,'%M %d, %Y') from employees;

#8. Write a query in SQL to count the no. of characters with out considering the spaces for each name.
select emp_name,length(emp_name) as "Length of name" from employees;

#9. Write a query in SQL to list the emp_id,salary, and commission of all the employees.
select emp_id,salary, comisssion from employees;

#10. Write a query in SQL to display the unique department with jobs.
select distinct dept_id, job_name from employees;

#11. Write a query in SQL to list the employees who does not belong to department 2001.
select * from employees where dept_id not in (2001);
select * from employees where dept_id in (1001,3001);

#12. Write a query in SQL to list the employees who joined before 1991. 
select * from employees where hire_date<('1991-1-1');

select * from employees where hire_date>('1991-1-1') and hire_date<('1992-12-31');

#13. Write a query in SQL to display the average salaries of all the employees who works as ANALYST. 

select avg(salary) 
from employees
where job_name='ANALYST';

#14. Write a query in SQL to display the details of the employee BLAZE. 

select *
from employees
where emp_name='BLAZE';

#15. Write a query in SQL to display all the details of the employees whose commission is more than their salary. 
select *
from employees
where comisssion>salary;

#16. Write a query in SQL to list the employees whose salary is more than 3000 after giving 25% increment.

select *
from employees
where (salary *1.25)>3000;
 
#17. Write a query in SQL to list the name of the employees, those having six characters to their name.

select *
from employees
where length(emp_name)=6;

select emp_name,length(emp_name)
from employees
where length(emp_name)=6;

#18. Write a query in SQL to list the employees who joined in the month January.
select * 
from employees
where date_format(hire_date,'%M')='January'

select * 
from employees
where date_format(hire_date,'%M') not in('March','April','May')

#19. Write a query in SQL to list the name of employees and their manager separated by the string 'works for'.  
 
#20. Write a query in SQL to list all the employees whose designation is CLERK.

select * 
from employees
WHERE job_name='CLERK';

#11  Write a query in SQL to list the employees who does not belong to department 2001.

SELECT *
FROM employees
WHERE dep_id NOT IN (2001);

#12. Write a query in SQL to list the employees who joined before 1991.

SELECT *
FROM employees
WHERE hire_date<('1991-1-1');
#13. Write a query in SQL to display the average salaries of all the employees who works as ANALYST. 

SELECT avg(salary)
FROM employees
WHERE job_name = 'ANALYST';

#14. Write a query in SQL to display the details of the employee BLAZE.  
SELECT *
FROM employees
WHERE emp_name = 'BLAZE';

#15 Write a query in SQL to display all the details of the employees whose commission is more than their salary.

SELECT *
FROM employees
WHERE commission>salary;

#16. Write a query in SQL to list the employees whose salary is more than 3000 after giving 25% increment. 

SELECT *
FROM employees
WHERE (1.25*salary) > 3000;

#17. Write a query in SQL to list the name of the employees, those having six characters to their name.

SELECT emp_name
FROM employees
WHERE length(emp_name)=6;

#18. Write a query in SQL to list the employees who joined in the month January
SELECT *
FROM employees
WHERE to_char(hire_date, 'mon')='jan';

#19. Write a query in SQL to list the name of employees and their manager separated by the string 'works for'.

SELECT e.emp_name || ' works for ' || m.emp_name
FROM employees e,
     employees m
WHERE e.manager_id = m.emp_id;


#20. Write a query in SQL to list all the employees whose designation is CLERK.

SELECT *
FROM employees
WHERE job_name = 'CLERK';


#21. Write a query in SQL to list the employees whose experience is more than 27 years. 

SELECT *
FROM employees
WHERE EXTRACT(YEAR
              FROM age(CURRENT_DATE, hire_date)) > 27;
              
              
#22. Write a query in SQL to list the employees whose salaries are less than 3500. 

SELECT *
FROM employees
WHERE salary <3500;

#23. Write a query in SQL to list the name, job_name, and salary of any employee whose designation is ANALYST. 

SELECT emp_name,
       job_name,
       salary
FROM employees
WHERE job_name = 'ANALYST';

#24. Write a query in SQL to list the employees who have joined in the year 1991. 
SELECT *
FROM employees
WHERE to_char(hire_date,'YYYY') = '1991';

#25. Write a query in SQL to list the name, id, hire_date, and salary of all the employees joined before 1 apr 91.

SELECT e.emp_id,
       e.emp_name,
       e.hire_date,
       e.salary
FROM employees e
WHERE hire_date <'1991-04-01';

#26. Write a query in SQL to list the employee name, and job_name who are not working under a manager

SELECT e.emp_name,
       e.job_name
FROM employees e
WHERE manager_id IS NULL;

#27. Write a query in SQL to list all the employees joined on 1st may 91.

SELECT *
FROM employees
WHERE hire_date = '1991-05-01';

#28. Write a query in SQL to list the id, name, salry, and experiences of all the employees working for the manger 68319. 

SELECT emp_id,
       emp_name,
       salary,
       age(CURRENT_DATE, hire_date) "Experience"
FROM employees
WHERE manager_id=68319;

#29. Write a query in SQL to list the id, name, salary, and experience of all the employees who earn more than 100 as daily salary.

SELECT emp_id,
       emp_name,
       salary,
       age(CURRENT_DATE, hire_date) "Experience"
FROM employees
WHERE (salary/30)>100;

#30. Write a query in SQL to list the employees who are retiring after 31-Dec-99 after completion of 8 years of service period.

SELECT emp_name
FROM employees
WHERE hire_date + interval '96 months' > '1999-12-31';


#31. Write a query in SQL to list those employees whose salary is an odd value.

SELECT *
FROM employees
WHERE mod(salary,2) = 1;

#32. Write a query in SQL to list those employees whose salary contain only 3 digits.alter

SELECT *
FROM employees
WHERE length(TRIM(TO_CHAR(salary,'9999'))) = 3;

#33. Write a query in SQL to list the employees who joined in the month of APRIL. 

SELECT *
FROM employees
WHERE to_char(hire_date,'MON') ='APR';

#OR
#SELECT *
FROM employees
WHERE to_char(hire_date,'MON') IN ('APR');

#OR
#SELECT *
FROM employees
WHERE to_char(hire_date,'MON') LIKE 'APR%';

#34. Write a query in SQL to list the employees those who joined in company before 19th of the month.

SELECT *
FROM employees
WHERE to_char(hire_date,'DD') < '19';

#35. List the employees who are SALESMAN and gathered an experience which month portion is more than 10. 

SELECT *
FROM employees
WHERE job_name = 'SALESMAN'
  AND EXTRACT(MONTH
              FROM age(CURRENT_DATE, hire_date)) > 10;
              
#  36. Write a query in SQL to list the employees of department id 3001 or 1001 joined in the year 1991. 
 SELECT *
FROM employees
WHERE to_char(hire_date,'YYYY') = '1991'
  AND (dep_id =3001
       OR dep_id =1001) ;
OR

SELECT *
FROM employees
WHERE to_char (hire_date,'YYYY') IN ('1991')
  AND (dep_id = 3001
       OR dep_id =1001) ;
       
#37. Write a query in SQL to list the employees of department id 3001 or 1001 joined in the year 1991.  
 SELECT *
FROM employees
WHERE dep_id=1001
  OR dep_id=2001;

#38. Write a query in SQL to list all the employees of designation CLERK in department no 2001.

SELECT *
FROM employees
WHERE job_name ='CLERK'
  AND dep_id = 2001;


#39. Write a query in SQL to list the ID, name, salary, and job_name of the employees for -   Go to the editor
#1. Annual salary is below 34000 but receiving some commission which should not be more than the salary,
#2. And designation is SALESMAN and working for department 3001.

SELECT emp_id,
       emp_name,
       salary,
       job_name
FROM employees
WHERE 12*(salary+commission) < 34000
  AND commission IS NOT NULL
  AND commission < salary
  AND job_name = 'SALESMAN'
  AND dep_id = 3001;
  
  
#  40. Write a query in SQL to list the employees who are either CLERK or MANAGER.

SELECT *
FROM employees
WHERE job_name IN ('CLERK','MANAGER');
SELECT *
FROM employees
WHERE job_name IN ('CLERK','MANAGER');