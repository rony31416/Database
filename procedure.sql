--(01)
--write a procedure which takes the employee id as input and
--gives the salary as output with employees lastname

CREATE OR REPLACE PROCEDURE query_emp
(p_id IN employees.employee_id%TYPE,
p_name OUT employees.last_name%TYPE,
p_salary OUT employees.salary%TYPE)

IS

BEGIN
    SELECT last_name, salary INTO p_name, p_salary
    FROM employees
    WHERE employee_id=p_id;
END query_emp;
/

--- to show output
DECLARE
    v_emp_name employees.last_name%TYPE;
    v_emp_sal employees.salary%TYPE;
BEGIN
    query_emp(171, v_emp_name, v_emp_sal);
    DBMS_OUTPUT.PUT_LINE(v_emp_name || ' erans ' ||
    to_char(v_emp_sal, '$999999.00'));
END;
/


--(02)
--write a procedure which takes the employee id as input and
-- gives the annual salary with commission as output with employees lastname

CREATE OR REPLACE PROCEDURE query_emp
(p_id IN employees.employee_id%TYPE,
p_name OUT employees.last_name%TYPE,
p_salary OUT employees.salary%TYPE)

IS

BEGIN
    SELECT last_name, 12*salary*(1+NVL(commission_pct, 0)) INTO p_name, p_salary
    FROM employees
    WHERE employee_id=p_id;
END query_emp;
/

-- to show output
DECLARE
    v_emp_name employees.last_name%TYPE;
    v_emp_sal employees.salary%TYPE;
BEGIN
    query_emp(171, v_emp_name, v_emp_sal);
    DBMS_OUTPUT.PUT_LINE(v_emp_name || ' annual salary is ' ||
    to_char(v_emp_sal, '$999999.00'));
END;
/


--03
--you are given a phone number as input now write 
--sql command using procedure for formating this

CREATE OR REPLACE PROCEDURE format_phone 
 (p_phone_no IN OUT VARCHAR2) IS 
BEGIN 
 p_phone_no := '(' || SUBSTR(p_phone_no,1,3) || 
 ') ' || SUBSTR(p_phone_no,4,3) || 
 '-' || SUBSTR(p_phone_no,7); 
END format_phone; 
/

--output command 
DECLARE
    v_phone_no VARCHAR2(100);
BEGIN
    v_phone_no:='777999888';
    format_phone(v_phone_no);
    DBMS_OUTPUT.PUT_LINE('Formatted ' || v_phone_no);
END;
/


--04
--you are given the radius of a circle as input 
--write sql command using procedure for finding area

CREATE OR REPLACE PROCEDURE circle_area
(v_radius IN NUMBER,
v_area OUT NUMBER)

IS

BEGIN
    v_area:=3.1416*v_radius*v_radius;
END circle_area;
/

set serveroutput on;

-- to show output
DECLARE
    area NUMBER;
BEGIN
    circle_area(5, area);
    DBMS_OUTPUT.PUT_LINE('Area of the circle is ' || area);
END;
/


--05
--write a sql command using procedure which takes employee id and percentage as input
--and the salary of the given employee id will increase with given percentage
CREATE OR REPLACE PROCEDURE raise_salary
(p_id IN employees.employee_id%TYPE,
 p_percent IN NUMBER)

IS

BEGIN
    UPDATE employees
    SET salary = salary * (1 + p_percent/100)
    WHERE employee_id = p_id;
END raise_salary;
/

--to show output
set serveroutput on;

BEGIN raise_salary(101, 5); 
END;
/






