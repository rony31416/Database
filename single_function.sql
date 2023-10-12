--01
--case converting
SELECT employee_id, last_name, department_id
FROM employees
WHERE LOWER(last_name) = 'higgins';


--02
--Character-Manipulation Functions
SELECT employee_id, CONCAT(first_name, last_name) NAME,job_id, LENGTH (last_name),
INSTR(last_name, 'a') "Contains 'a'?"
FROM employees
WHERE SUBSTR(job_id, 4) = 'REP';

--03
--Using the ROUND Function
SELECT ROUND(45.923,2), ROUND(45.923,0),
ROUND(45.923,-1)
FROM DUAL;

--04
--mathematical operation 
select 3 + 2 from dual;


--05
--Using the MOD Function
SELECT last_name, salary, MOD(salary, 5000)
FROM employees
WHERE job_id = 'SA_REP';


--06
--show date  & time
SELECT sysdate FROM dual;

--07
--find the working period by weekly
SELECT last_name, (SYSDATE-hire_date)/7 AS WEEKS
FROM employees
WHERE department_id = 90;

--08
--using join and show the data of two different table
SELECT last_name,employees.department_id,job_id,salary,12*salary*NVL(commission_pct,0) "With comission" from employees
JOIN departments
ON employees.department_id = departments.department_id
AND employees.department_id IN (80);


--09
--annual salary find
SELECT last_name,salary,12*salary Anual FROM employees;

--10
--find annual salary with commission
select last_name,salary,12*salary+12*salary*commission_pct  " Annual salary" from employees;

--11
--fixed error that the employee who does not have any commission his/her annual salary was NULL so lets fixed it
select last_name,salary,12*salary+12*salary*NVL(commission_pct,0)  "    Annual salary" from employees;

--12

