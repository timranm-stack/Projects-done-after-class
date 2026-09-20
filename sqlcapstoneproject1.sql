-- 1. CREATE THE TABLE
-- This establishes the structure for storing employee details and salaries.
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
);

-- 2. INSERT SAMPLE DATA
-- Populating the table with sample data for Harsh's company.
INSERT INTO employees (employee_id, first_name, last_name, department, salary, hire_date) VALUES
(101, 'Harsh', 'Sharma', 'Management', 95000.00, '2022-01-15'),
(102, 'Ananya', 'Rao', 'Engineering', 85000.00, '2023-03-20'),
(103, 'Rahul', 'Verma', 'Engineering', 78000.00, '2023-06-10'),
(104, 'Priya', 'Patel', 'Marketing', 62000.00, '2024-02-01'),
(105, 'Amit', 'Singh', 'HR', 55000.00, '2021-11-12');

-- 3. FILTER DATA
-- Fetching details of employees who belong to the 'Engineering' department.
SELECT * 
FROM employees 
WHERE department = 'Engineering';

-- Fetching employees who earn a salary greater than 60,000.
SELECT first_name, last_name, salary 
FROM employees 
WHERE salary > 60000.00;

-- 4. SORT DATA
-- Listing all employees, sorted by their salary from highest to lowest.
SELECT * 
FROM employees 
ORDER BY salary DESC;

-- 5. MANIPULATE DATA
-- Updating Amit's salary after a performance review.
UPDATE employees 
SET salary = 58000.00 
WHERE employee_id = 105;

-- Verifying all details to show Harsh the updated final table.
SELECT * FROM employees;
