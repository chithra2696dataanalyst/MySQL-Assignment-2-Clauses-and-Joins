# MySQL Assignment 2 – Querying Data

## Project Overview
This project is the continuation of MySQL Assignment 1, where the database and tables were created with constraints.

In this assignment, I practised SQL queries using the existing `Employee1` database. The assignment focuses on retrieving, filtering, sorting, grouping, and analysing employee data using MySQL.

## Database Details

- **Database Name:** Employee1
- **Tables Used:**
  - employees
  - departments_info
  - locations

## SQL Concepts Covered

### 1. DISTINCT
- Retrieve distinct salary values from the Employees table.

### 2. ALIAS (AS)
- Rename age as `Employee_Age`.
- Rename salary as `Employee_Salary`.

### 3. WHERE Clause and Operators
- Retrieve employees earning more than ₹50,000 and hired before 2016-01-01.
- Update missing designations to Data Scientist.

### 4. ORDER BY
- Sort employees by department ID in ascending order and salary in descending order.

### 5. LIMIT
- Display the first five employees hired in 2018.

### 6. Aggregate Functions
- Calculate the total salary in the Finance department.
- Find the minimum age among employees.

### 7. GROUP BY
- Find the maximum salary for each location.
- Calculate the average salary for designations containing the word Analyst.

### 8. HAVING
- Find departments with fewer than three employees.
- Find locations where female employees have an average age below 30.

### 9. JOINS
- **INNER JOIN:** Display employee names, designations, and department names.
- **LEFT JOIN:** Display all departments with employee counts, including departments without employees.
- **RIGHT JOIN:** Display all locations and their assigned employees, including locations without employees.

## Tools Used
- MySQL
- MySQL Workbench

## Learning Outcomes
- Practised SQL data retrieval using SELECT and DISTINCT.
- Learned column aliases using AS.
- Used WHERE conditions and comparison operators.
- Practised sorting and limiting records.
- Applied aggregate functions such as SUM(), MIN(), MAX(), and AVG().
- Used GROUP BY and HAVING for data analysis.
- Practised INNER JOIN, LEFT JOIN, and RIGHT JOIN.
- Improved understanding of employee database management.

## Previous Assignment
This assignment continues from **MySQL Assignment 1 – Database Creation with Constraints**, using the existing `Employee1` database.

## Conclusion
This assignment helped me improve my practical knowledge of SQL querying and data analysis using MySQL Workbench.
