SELECT * FROM tab; 
-- it is used to retrieve a list of all tables in the current schema,here the current schema is 'hr'

DESCRIBE employees;
--The DESCRIBE command is commonly used in Oracle SQL to retrieve information about the structure of a table
--such as column names, data types, and constraint

SELECT * FROM employees;
--This command retrieves all rows and columns from the "employees" table
-- which contains information about employees in the organization.

SELECT * FROM employees WHERE department_id = 30;
--Filter data based on a condition using WHERE Clause

--now drive into sea
--SELECT *|{[DISTINCT] column|expression [alias],...} FROM table [WHERE condition(s)];

--01
SELECT employee_id, last_name, job_id,department_id
FROM employees
WHERE department_id = 90;

--02
SELECT last_name
FROM employees
WHERE hire_date = '17-FEB-96' ;