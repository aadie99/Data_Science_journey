-- MySQL is a RDBMS that stores relational databases in tables in form of rows and columns
-- It uses SQL as standard query language. SQL is used to interact with this RDBMS
-- DDL = CREATE ALTER-(Add, Modify, Drop) DROP TRUNCATE
         -- Create database, Create Table--- DML = InsertInto DeleteFrom Update 
-- DQL = Select Where Distinct Describe Orderby Limit/Offset Aggregate Fns-Count()Avg()Max()Min() Groupby Having
-- DCL = Grant Revoke
-- TCL = Commit Rollback Savepoint
-- Set Operators = Union Unionall Intersect/Except
-- Constraints = Null / NOT NUll, Unique, Default, Auto_increment, IN/NOT IN 
-- Primary key - Natural key, Surrogate key (both NOT NULL and UNIQUE)
-- Foreign key - An attribute stored on a database table, that links us with another database table. 
-- Composite key - Table consisting both the foreign keys, or both primary keys which are referring to two different tables of a database.
-- Operators = '<>': Not equals to
-- In MySQL Safe Update Mode, the WHERE clause must restrict rows using a key column with a constant or range,
-- not just a logical check like IS NOT NULL.
-- You cannot update multiple rows using a non-key column in safe update mode. 
-- You must either use a key-based condition or temporarily disable safe update mode.
-- Error 1175 occurs because MySQL safe update mode prevents UPDATE or DELETE statements without a WHERE clause that uses a key column.
-- SQL_SAFE_UPDATES is a MySQL system variable.
-- Comparison Operators: =, <>, <=, >=, <, >, AND, OR
-- The SELECT statement is used to return a result set consisting of columns, expressions, or constant values derived from one or more tables.
-- You can output: Expressions, Sentences, Computed strings
-- CASE EXPRESSION = WHEN... THEN 
-- In CASE statements, conditions must be ordered from most restrictive to least restrictive to avoid premature matches.

Drop table LCTR;
CREATE TABLE LCTR (
    employee_id INT PRIMARY KEY auto_increment,
    name VARCHAR(20) NOT NULL,
    role VARCHAR(20) Default 'undecided'
);
-- ALTER TABLE LCTR 
-- ADD Companies_count INT;

SELECT 
    *
FROM
    LCTR;
DESCRIBE LCTR;
-- ALTER TABLE LCTR DROP COLUMN Companies_count;
-- INSERT INTO LCTR VALUES(28972, 'Aditya Tathe', 'Data Analyst');
-- INSERT INTO LCTR VALUES(28971, 'Aditya Kudva', 'Data Scientist');
-- INSERT INTO LCTR VALUES(28973, 'Aditya Kunte', 'Data Entry');
INSERT INTO LCTR(name, role) VALUES('Aditya Patil', 'Data Analyst');
INSERT INTO LCTR(name, role) VALUES('Aditya Tathe', 'Data Scientist');
INSERT INTO LCTR(name, role) VALUES('Aditya Kudva', 'Data Analyst');
INSERT INTO LCTR(name, role) VALUES('Aditya Kunte', 'Data Analyst');

SET SQL_SAFE_UPDATES = 0; -- Set SQL Safe Update OFF
Update LCTR
SET role = 'Data Analytics'
WHERE role = 'Data Analyst';
SET SQL_SAFE_UPDATES = 1; -- Set SQL Safe Update ON again 

SET SQL_SAFE_UPDATES = 0; 
DELETE FROM LCTR where role = 'DATA ANALyst';
SET SQL_SAFE_UPDATES = 1;

SELECT * FROM LCTR -- table_name.column_name to show it clearly and specifically from which table is that column retrieved. 
ORDER BY role, employee_id
LIMIT 2;

SELECT * FROM LCTR 
WHERE role <> "Data Scientist"; -- SQL is not case-sensitive
-- Single quotes ' ' → String literals
-- Double quotes " " → Identifiers (column/table names)
-- SELECT * FROM LCTR WHERE role = 'Data Analyst';   -- ✅ correct
-- SELECT "role" FROM LCTR;  -- identifier (depends on DB settings)

-- Why did it work for you then?
-- Because MySQL (by default):
-- Allows double quotes for strings if ANSI mode is OFF
-- Is lenient, not strict
-- But this is NOT portable SQL.

SELECT * FROM LCTR 
WHERE role IN ('Data Analyst') AND employee_id > 6; -- IN, NOT IN 
DELETE FROM LCTR WHERE employee_id = 6;

SELECT * FROM LCTR 
WHERE role IN ('Data Analyst') AND employee_id > 12;

SELECT * FROM mobile_data WHERE Brands = 'realme' or Internal_Storage = '128 GB';
Delete From mobile_data where Brands = 'realme';
Describe mobile_data;

-- Query to check which column is Primary key
SELECT Column_name FROM Information_schema.Key_column_usage
Where Table_schema = 'morningstar' 
AND Table_name = 'LCTR' AND Constraint_name = 'Primary';

SELECT * FROM mobile_data.mobile_data;
SELECT 
    *
FROM
    mobile_data.mobile_data
WHERE
    Brands = 'realme'
        AND Internal_Storage = '128 GB'
ORDER BY RAM_Storage , Selfie_Camera;