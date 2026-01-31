-- When using GROUP BY, every selected column must either be:
-- 1.Included in the GROUP BY clause, or
-- 2.Wrapped inside an aggregate function.
-- WHERE before GROUP BY, HAVING after GROUP BY
-- ON DELETE SET NULL - ensures that when a referenced parent row is deleted, 
-- 1.the foreign key in the child row is automatically set to NULL, 
-- 2.preserving the child record while maintaining referential integrity.
-- ON DELETE CASCADE - Automatically deletes child rows when the referenced parent row is deleted.
-- RESTRICT
-- NO ACTION
-- A referenced table must already exist before a FOREIGN KEY can point to it
-- Foreign key error (1452) happens when a column referring parent row, does not exist in the parent table, while time of insertion
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
DROP FOREIGN KEY branch_ibfk_1;

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

SELECT * FROM employee;
SELECT * FROM branch;
SELECT * FROM Client;
SELECT * FROM branch_supplier;
SELECT * FROM works_with;


