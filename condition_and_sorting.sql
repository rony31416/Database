--Using Comparison Operators
--01
SELECT last_name, salary
FROM   employees
WHERE  salary <= 3000;

--02
SELECT last_name, salary
FROM   employees
WHERE  salary BETWEEN 2500 AND 3500;

--03
--This query will return all the employees whose first names start with the letter 'S'.
SELECT	first_name
FROM 	employees
WHERE	first_name LIKE 'S%' ;

--04
--Using the NULL Conditions
SELECT last_name, manager_id
FROM   employees
WHERE  manager_id IS NULL ;

--05
--using AND operator
SELECT employee_id, last_name, job_id, salary
FROM   employees
WHERE  salary >= 10000
AND    job_id LIKE '%MAN%' ;

--06
--using OR operator
SELECT employee_id, last_name, job_id, salary
FROM   employees
WHERE  salary >= 10000
OR     job_id LIKE '%MAN%' ;

--07
--Using the NOT Operator
SELECT last_name, job_id
FROM   employees
WHERE  job_id NOT IN ('IT_PROG', 'ST_CLERK', 'SA_REP') ;


--08(01)
--Rules of Precedence
SELECT last_name, job_id, salary
FROM   employees
WHERE  job_id = 'SA_REP'
OR     job_id = 'AD_PRES'
AND    salary > 15000;

--08(02)
SELECT last_name, job_id, salary
FROM   employees
WHERE  (job_id = 'SA_REP'
OR     job_id = 'AD_PRES')
AND    salary > 15000;

--09
--sorting
--Sort retrieved rows with the ORDER BY clause:
--ASC: Ascending order, default
--DESC: Descending order
SELECT   last_name, job_id, department_id, hire_date
FROM     employees
ORDER BY hire_date ;

--10
SELECT   last_name, job_id, department_id, hire_date
FROM     employees
ORDER BY hire_date DESC ;

--11
--here annsal is a name of atribute which store 12*salary
SELECT employee_id, last_name, salary*12 annsal
FROM   employees
ORDER BY annsal ;

--12
--Sorting by multiple columns:
SELECT last_name, department_id, salary
FROM   employees
ORDER BY department_id, salary DESC;

--13
--taking user input 
SELECT employee_id, last_name, salary, department_id
FROM   employees
WHERE  employee_id = &employee_num ;


--14
--multiple input taking from user
SELECT employee_id, last_name, job_id,&column_name
FROM   employees
WHERE  &condition
ORDER BY &order_column ;

--15
--Using the DEFINE Command
DEFINE employee_num = 200
SELECT employee_id, last_name, salary, department_id
FROM   employees
WHERE  employee_id = &employee_num ;


--16
select &last_name,&employee_id,&salary from employees
WHERE employee_id = &employee_num;

--Enter value for last_name: last_name
--Enter value for employee_id: employee_id
--Enter value for salary: salary
--old   1:   select &last_name,&employee_id,&salary from employees
--new   1:   select last_name,employee_id,salary from employees
--Enter value for employee_num: 101
--old   2: WHERE employee_id = &employee_num
--new   2: WHERE employee_id = 101




