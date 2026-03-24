-- Q1:  Create the database
CREATE DATABASE company_db;

-- Use the database
USE company_db;

-- Create the employees table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    hire_date DATE
);


-- Q2: Insert data into employees table
INSERT INTO employees (employee_id, first_name, last_name, department, salary, hire_date) VALUES
(101, 'Amit', 'Sharma', 'HR', 50000, '2020-01-15'),
(102, 'Riya', 'Kapoor', 'Sales', 75000, '2019-03-22'),
(103, 'Raj', 'Mehta', 'IT', 90000, '2018-07-11'),
(104, 'Neha', 'Verma', 'IT', 85000, '2021-09-01'),
(105, 'Arjun', 'Singh', 'Finance', 60000, '2022-02-10');


-- Q3: Display all records sorted by salary (lowest to highest)
SELECT *
FROM employees
ORDER BY salary ASC;


-- Q4: Show employees sorted by department (A–Z) and salary (high to low)
SELECT *
FROM employees
ORDER BY department ASC, salary DESC;


-- Q5: List all employees in the IT department, ordered by hire date (newest first)
SELECT *
FROM employees
WHERE department = 'IT'
ORDER BY hire_date DESC;


-- Q6: Create the sales table
CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    amount INT,
    sale_date DATE
);

-- Insert data into sales table
INSERT INTO sales (sale_id, customer_name, amount, sale_date) VALUES
(1, 'Aditi', 1500, '2024-08-01'),
(2, 'Rohan', 2200, '2024-08-03'),
(3, 'Aditi', 3500, '2024-09-05'),
(4, 'Meena', 2700, '2024-09-15'),
(5, 'Rohan', 4500, '2024-09-25');


-- Q7: Display all sales sorted by amount (highest to lowest)
SELECT *
FROM sales
ORDER BY amount DESC;


-- Q8: Show all sales made by customer "Aditi"
SELECT *
FROM sales
WHERE customer_name = 'Aditi';

