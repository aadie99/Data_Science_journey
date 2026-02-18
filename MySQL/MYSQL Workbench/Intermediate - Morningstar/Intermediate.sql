-- Queries must follow logical dependency order.
-- We cannot randomly run statements in relational systems.

-- When using GROUP BY, every selected column must either be:
-- 1.Included in the GROUP BY clause, or
-- 2.Wrapped inside an aggregate function.
-- Ex:- SELECT AVG(salary), first_name, last_name FROM Employee
--    GROUP BY first_name, last_name;
-- In the above example, every selected non-aggregated columns are included in the GROUP BY clause, 
-- and the salary is wrapped inside an aggregated function.

-- Remember this rule:
-- WHERE before GROUP BY, HAVING after GROUP BY

-- ERRORS:
-- Error Code: 1140. In aggregated query without GROUP BY, 
-- expression #2 of SELECT list contains nonaggregated column 'google.Employee.first_name'; 
-- this is incompatible with sql_mode=only_full_group_by

-- Error Code: 1055. Expression #2 of SELECT list is not in GROUP BY clause 
-- and contains nonaggregated column 'google.Employee.first_name' which is not functionally dependent on columns in GROUP BY clause; 
-- this is incompatible with sql_mode=only_full_group_by

-- Error Code: 1231. Variable 'sql_mode' can't be set to the value of 'NO_ENGINE_SUBSTITUTIONONLY_FULL_GROUP_BY'

-- Error Code: 1452. Cannot add or update a child row: 
-- a foreign key constraint fails (`google`.`branch`, CONSTRAINT `branch_ibfk_1` FOREIGN KEY (`mgr_id`) REFERENCES `employee` (`emp_id`) ON DELETE SET NULL)

-- CONSTRAINTS:-
-- ON DELETE SET NULL - ensures that when a referenced parent row is deleted, 
-- 1.the foreign key in the child row is automatically set to NULL, 
-- 2.preserving the child record while maintaining referential integrity.
-- ON DELETE CASCADE - Automatically deletes child rows when the referenced parent row is deleted.
-- RESTRICT - Prevents deletion of child rows when it exist
-- NO ACTION - Similar to Restrict
-- A referenced table must already exist before a FOREIGN KEY can point to it
-- Foreign key error (1452) happens when a column referring parent row, does not exist in the parent table, while time of insertion
-- ONLY_FULL_GROUP_BY enforces that when aggregate functions are used, 
-- -- all selected non-aggregated columns must be included in the GROUP BY clause or be functionally dependent on it, 
-- -- to prevent ambiguous results.

-- SET OPERATORS
-- UNION - It combines results removing duplicates
-- UNION ALL - It combines results keeping duplicates
-- INTERSECT (conceptual) - similar to inner join / IN
-- EXCEPT / MINUS (conceptual) - similar to left join / NOT IN

-- 
-- IS NULL 
-- -- Handle NULL using COALESCE
-- IS NOT NULL

-- -- FUNCTIONS
-- AGGREGATE FUNCTIONS:-
-- COUNT()
-- AVG()
-- SUM()
-- MIN()
-- MAX()
-- Cannot use Aggregate inside another aggregate = Count(Max(salary)) ❌
-- When you need to count rows that match an aggregate condition, 
-- use a subquery to compute the aggregate first, then filter using WHERE.

-- STRING FUNCTIONS:-
-- UPPER(), UCASE()
-- LOWER(), LCASE()
-- REPLACE(string, from_substring, to_substring) - search for a substring and replace it with another substring within a string.
-- CEILING()or CEIL() - is a numeric function that rounds up to the nearest integer.
-- FLOOR() - is a numeric function that rounds down to the nearest integer
-- ROUND() - is a numeric function that rounds to the nearest integer
-- CEILING() or CEIL() : returns the smallest integer greater than or equal to a number
-- FLOOR()            : returns the largest integer less than or equal to a number
-- ROUND(x, y)            : rounds a number to the nearest integer
--                        : x -> aggregated integer
--                        : y -> no.of decimal places to be rounded off
-- TRUNCATE(x, y)         : truncates a number to the asked integer
--                        : x -> aggregated integer
--                        : y -> no.of decimal places after the integer to be cut off 
SELECT CEILING(45.6);
SELECT FLOOR(45.6);
SELECT ROUND(45.6);

-- While writing range conditions, use Where a > x AND a < y; 
-- OR Where a BETWEEN x AND y;

-- -- JOINS
-- Join is used to combine rows from two or more tables based on logical relationship between related columns
-- to create a temporary result set. 
-- We use Between for joining range, when there is no matching column in two or more tables

-- JOIN / INNER JOIN -> 
-- LEFT JOIN ->
-- RIGHT JOIN -> 
-- FULL OUTER JOIN -> (conceptual) Performed using UNION of Left join and Right join
-- SELF JOIN -> When one table contains hierarchical or relational data inside itself.
-- -- Aliases are important in SELF JOIN
-- -- INNER SELF JOIN ->
-- -- RIGHT SELF JOIN ->
-- -- LEFT SELF JOIN ->

-- Many-to-many Multiplication Effect

-- -- Nested Query / Sub Queries
-- Single row Subquery
-- Multi row Subquery

Drop database Google;
USE google;
-- USE sys;
-- DROP TABLE IF EXISTS works_with, branch_supplier, client, branch, employee;

CREATE database Google;
-- Parent Table
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(40),
    last_name VARCHAR(40),
    birth_date DATE,
    sex VARCHAR(1),
    salary INT,
    super_id INT,
    branch_id INT,
    FOREIGN KEY(super_id) REFERENCES Employee(emp_id) ON DELETE SET NULL -- Self Referring 
   -- FOREIGN KEY(branch_id) REFERENCES Branch(branch_id) ON DELETE SET NULL
);
-- Circular dependencies are resolved using ALTER TABLE.
ALTER TABLE Employee
ADD FOREIGN KEY(branch_id) REFERENCES Branch(branch_id) ON DELETE SET NULL;

-- Child Tables
CREATE TABLE Branch (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(40),
    mgr_id INT,
    mgr_start_date DATE,
    FOREIGN KEY(mgr_id) REFERENCES Employee(emp_id) ON DELETE SET NULL
);
SHOW CREATE TABLE Branch;
ALTER TABLE Branch
DROP FOREIGN KEY branch_ibfk_2;

CREATE TABLE Client (
    client_id INT PRIMARY KEY,
    client_name VARCHAR(40),
    branch_id INT,
    FOREIGN KEY(branch_id) REFERENCES Branch(branch_id) ON DELETE SET NULL
);

CREATE TABLE Works_with (
    emp_id INT,
    client_id INT,
    PRIMARY KEY(emp_id, client_id),
    FOREIGN KEY(emp_id) REFERENCES Employee(emp_id) ON DELETE CASCADE,
    FOREIGN KEY(client_id) REFERENCES Client(client_id) ON DELETE CASCADE,
    total_sales INT
);

CREATE TABLE Branch_Supplier (
    branch_id INT,
    supplier_name VARCHAR(40),
    PRIMARY KEY(branch_id, supplier_name),
    FOREIGN KEY(branch_id) REFERENCES Branch(branch_id) ON DELETE CASCADE,
    supply_type VARCHAR(40)
);

-- DROP TABLE Employee, Branch, Client, Works_with, Branch_Supplier;
-- DROP TABLE Employee;

-- Inserting values
INSERT INTO Branch VALUES
(1, 'Corporate', 100, '2006-02-09'), 
(2, 'Scranton', 102, '1992-04-06'),
(3, 'Stamford', 106, '1998-02-13');

INSERT INTO Employee VALUES
(100, 'David', 'Wallace', '1967-11-17', 'M', 250000, NULL, 1),
(101, 'Jan', 'Levinson', '1961-05-11', 'F', 110000, 100, 1),
(102, 'Michael', 'Scott', '1964-03-15', 'M', 75000, 100, 2),
(103, 'Angela', 'Martin', '1971-06-25', 'F', 63000, 102, 2),
(104, 'Kelly', 'Kapoor', '1980-02-05', 'F', 55000, 102, 2),
(105, 'Stanley', 'Hudson', '1958-02-19', 'M', 69000, 102, 2),
(106, 'Josh', 'Porter', '1969-09-05', 'M', 78000, 100, 3),
(107, 'Andy', 'Bernard', '1973-07-22', 'M', 65000, 106, 3),
(108, 'Jim', 'Halpert', '1978-10-01', 'M', 71000, 106, 3);

INSERT INTO Client VALUES
(400, 'Dunmore Highschool', 2),
(401, 'Lackawanna County', 2),
(402, 'FedEx', 3),
(403, 'John Daly Law, LLC', 3),
(404, 'Scranton Whitepages', 2),
(405, 'Times Newspaper', 3),
(406, 'FedEx', 2);

INSERT INTO Works_with VALUES
(105, 400, 55000),
(102, 401, 267000),
(108, 402, 22500),
(107, 403, 5000),
(108, 403, 12000),
(105, 404, 33000),
(107, 405, 26000),
(102, 406, 15000),
(105, 406, 130000);

INSERT INTO branch_supplier VALUES
(2, 'Hammer Mill', 'Paper'),
(2, 'Uni-ball', 'Writing Utensils'),
(3, 'Patriot Paper', 'Paper'),
(2, 'J.T. Forms & Labels', 'Custom Forms'),
(3, 'Uni-ball', 'Writing Utensils'),
(3, 'Hammer Mill', 'Paper'),
(3, 'Stamford Labels', 'Custom Forms');

ALTER TABLE Branch
ADD FOREIGN KEY(mgr_id) REFERENCES Employee(emp_id) ON DELETE SET NULL;
-- Branch acts as a parent table for Employee through branch_id, and as a child table for Employee through mgr_id.
-- To resolve this circular dependency during insertion, we temporarily removed the foreign key constraint from Branch, 
-- inserted parent rows in Branch and Employee in the correct order, and 
-- then re-added the foreign key once all referenced parent rows existed.

-- Returning values using SELECT
SELECT * FROM employee;
SELECT * FROM branch;
SELECT * FROM Client;
SELECT * FROM branch_supplier;
SELECT * FROM works_with;

-- Applying conditions using WHERE clause, using Aliasing, and also using STRING Functions
SELECT * FROM Employee WHERE sex = 'M';
SELECT * FROM Employee ORDER BY sex, super_id, emp_id;
SELECT UCASE(first_name) AS name, UCASE(last_name) AS surname FROM Employee;
SELECT DISTINCT sex FROM Employee;

-- Using UNION Operator to combine columns from two different tables
SELECT branch_id FROM branch
UNION 
SELECT client_id FROM client ORDER BY branch_id;

SELECT branch_id FROM branch_supplier
UNION ALL
SELECT branch_id FROM branch ORDER BY branch_id;

-- Using AGGREGATE Functions
SELECT COUNT(employee_id) FROM morningstar.LCTR;
SELECT COUNT(emp_id) FROM Employee;

SELECT COUNT(emp_id) FROM Employee
WHERE sex = 'F' AND birth_date > '1970-01-01';

SELECT AVG(salary) FROM Employee
WHERE sex = 'M';

-- UNION is widely used when we want to combine rows from two different tables
SELECT COUNT(sex), sex FROM Employee WHERE sex = 'F'
UNION 
SELECT COUNT(sex), sex FROM Employee WHERE sex = 'M';

SELECT branch_id, branch_name FROM branch
UNION 
SELECT emp_id, first_name FROM employee;

-- Using GROUP BY clause
SELECT COUNT(sex), sex FROM Employee
GROUP BY sex
Having sex = 'M';

SELECT MIN(emp_id) FROM Employee;
-- SET SESSION sql_mode = (
-- SELECT REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY', ''));
-- SET SESSION sql_mode = CONCAT(@@sql_mode, ',ONLY_FULL_GROUP_BY');

-- If you use an aggregate function, 
-- every other selected column must either be aggregated or be functionally dependent on GROUP BY columns.
-- Disabling ONLY_FULL_GROUP_BY can lead to ambiguous and unpredictable results, which is why modern MySQL enables it by default.

SELECT * FROM Employee;

SELECT AVG(salary) AS AVG_salary FROM Employee;
SELECT branch_id, AVG(salary) AS AVG_salary FROM Employee 
GROUP BY branch_id
Having branch_id > 1;

-- JOINS
-- JOIN - Matches rows from two or more tables based on a logical relationship between columns, to display a temporray result set
-- Rows are matched
-- Columns are just selected for display

-- Find all branches and the names of their managers
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM Employee -- LEFT Table is the one in the FROM
JOIN branch -- RIGHT Table is the one in the JOIN
ON employee.emp_id = branch.mgr_id;

SELECT * FROM employee;

-- To find employee names with no supervisors (CEO)
SELECT e.first_name AS Employee, s.first_name AS Supervisor
FROM Employee e
LEFT JOIN Employee s
ON e.super_id = s.emp_id
WHERE e.super_id IS NULL;

SELECT e.first_name AS Employee, s.first_name
FROM Employee e
RIGHT JOIN Employee s
ON e.super_id = s.emp_id;

-- To find employee names and their supervisor names
SELECT e.first_name AS Employee, s.first_name AS Supervisor
FROM Employee e
LEFT JOIN Employee s
ON e.super_id = s.emp_id;

-- To find which employees are supervisors of other employees
SELECT DISTINCT e.first_name AS Supervisor
FROM employee e
JOIN employee s
ON e.emp_id = s.super_id;

-- Match employee's super_id with supervisor's emp_id
-- LEFT JOIN is used to preserve all employees even if they do not have a matching supervisor. 
-- This ensures hierarchical completeness, especially when identifying top-level employees whose supervisor_id is NULL.

-- FULL OUTER JOIN (Performed using LEFT JOIN and RIGHT JOIN)
SELECT e.last_name AS Surname, b.branch_name AS Branch
FROM Employee e 
LEFT JOIN Branch b 
ON e.branch_id = b.branch_id
UNION
SELECT e.last_name AS Surname, b.branch_name AS Branch
FROM Employee e 
RIGHT JOIN Branch b 
ON e.branch_id = b.branch_id;

-- JOIN Important Example 
-- Using Case When...Then, for multiple conditions

-- SELECT CASE WHEN g.grade >= 8 THEN s.Name ELSE NULL END, 
-- g.Grade, s.Marks
-- FROM Students s
-- JOIN Grades g 
-- ON s.Marks BETWEEN g.Min_Mark AND g.Max_Mark
-- ORDER BY g.Grade DESC, 
-- CASE WHEN g.grade >= 8 THEN s.Name END, 
-- CASE WHEN g.grade < 8 THEN s.Marks END







