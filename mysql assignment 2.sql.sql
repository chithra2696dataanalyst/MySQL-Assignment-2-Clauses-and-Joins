use employee1;
-- add column designation and add column salary
alter table employees
 add column designation varchar(100),
add column salary decimal(10,2);
-- distinct values,aliases, where clause and operators
describe employees;
select distinct salary
from employees;
select age as employee_age,
salary as employee_salry 
from employees;
--- employee earning more than 50,000 and hired before 1 january 2016
select * from employees where salary > 50000 and hire_date < '2016-01-01';
SELECT
    employee_id,
    employee_name,
    designation,
    salary
FROM employees;
USE Employee1;
SET SQL_SAFE_UPDATES = 0;
UPDATE employees
SET designation = 'Data Scientist'
WHERE designation IS NULL
   OR TRIM(designation) = '';
   SELECT * FROM employees;
SELECT * FROM departments_info;
SELECT * FROM locations;
UPDATE employees SET salary = 45000 WHERE employee_id = 101;
UPDATE employees SET salary = 55000 WHERE employee_id = 102;
UPDATE employees SET salary = 70000 WHERE employee_id = 103;
UPDATE employees SET hire_date = '2014-06-10' WHERE employee_id = 101;
UPDATE employees SET hire_date = '2015-03-20' WHERE employee_id = 102;
UPDATE employees SET hire_date = '2017-08-05' WHERE employee_id = 103;
UPDATE employees SET hire_date = '2018-01-15' WHERE employee_id = 104;
UPDATE employees SET salary = 52000 WHERE employee_id = 104;
---   sorting, limiting and aggregation functions
SELECT * FROM employees
order by departments_id asc,salary desc;
UPDATE employees SET departments_id = 1 WHERE employee_id = 103;
UPDATE employees SET departments_id = 1 WHERE employee_id = 104;
INSERT INTO employees
(employee_id, employee_name, gender, age, hire_date, departments_id, locations_id, designation, salary)
VALUES
(105, 'Meena',  'f', 27, '2018-02-10', 1, 1, 'Data Analyst',   58000),
(106, 'Ravi',   'm', 32, '2018-04-18', 2, 2, 'Data Scientist', 62000),
(107, 'Sneha',  'f', 26, '2018-06-25', 3, 3, 'Business Analyst', 47000),
(108, 'Karthik','m', 35, '2018-09-12', 4, 4, 'Data Scientist', 75000),
(109, 'Anitha', 'f', 29, '2018-11-30', 2, 1, 'Data Analyst',   51000);
UPDATE employees
SET hire_date = '2019-11-30'
WHERE employee_id = 109;
SELECT employee_id, employee_name, hire_date
FROM employees
WHERE employee_id = 109;
--- display the first five employees hired in 2018
select * from employees where hire_date >= '2018-01-01' and hire_date < '2019-01-01'
order by hire_date asc
limit 5;
SELECT employee_id, employee_name, hire_date
FROM employees
ORDER BY hire_date;
UPDATE employees
SET hire_date = '2018-11-30'
WHERE employee_id = 109;
---- calculate total salary in the finance department
SELECT * FROM departments_info; 
SELECT SUM(e.salary) AS Total_Finance_Salary
FROM employees e
INNER JOIN departments_info d
    ON e.departments_id = d.departmentsid
WHERE d.departments_name = 'Finance';
SELECT employee_id, employee_name, salary, departments_id
FROM employees
WHERE departments_id = 4;
UPDATE employees SET departments_id = 4 WHERE employee_id = 103;
---- find minimum employee age
select min(age) as minimum_age
from employees;
---- group by having
---- FIND THE MAXIMUM SALARY OF EACH LOCATION
SELECT l.locations_id,
       MAX(e.salary) AS max_salary
FROM locations l
LEFT JOIN employees e
    ON l.locations_id = e.locations_id
GROUP BY l.locations_id;
---- calculate average salary for each designation containing analyst
SELECT designation,
       AVG(salary) AS average_salary
FROM employees
WHERE designation LIKE '%Analyst%'
GROUP BY designation;
---- find the departmaent with fewer than three employees
SELECT d.departments_name,
       COUNT(e.employee_id) AS employee_count
FROM departments_info d
LEFT JOIN employees e
    ON d.departmentsid = e.departments_id
GROUP BY d.departments_name
HAVING COUNT(e.employee_id) < 3;
-- find locations where female employees have an average below 30
describe locations;
SELECT * FROM locations;
SELECT locations_id FROM employees;
SELECT
    l.locations AS Location_Name,
    AVG(e.age) AS Average_Female_Age
FROM locations l
INNER JOIN employees e
    ON l.locations_id = e.locations_id
WHERE UPPER(e.gender) = 'F'
GROUP BY l.locations_id, l.locations
HAVING AVG(e.age) < 30;
-- joins / inner join - employee names,desination and department names
SELECT
    e.employee_name,
    e.designation,
    d.departments_name
FROM employees e
INNER JOIN departments_info d
    ON e.departments_id = d.departmentsid;
    -- left join -- all departments and their employee counts
    SELECT
    d.departments_name,
    COUNT(e.employee_id) AS Total_Employees
FROM departments_info d
LEFT JOIN employees e
    ON d.departmentsid = e.departments_id
GROUP BY d.departmentsid, d.departments_name;
-- right join - all locations and their assigned employees 
SELECT
    l.locations AS Location_Name,
    e.employee_name
FROM employees e
RIGHT JOIN locations l
    ON e.locations_id = l.locations_id
ORDER BY l.locations_id;

