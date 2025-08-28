CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO employees (employee_id, name, department, salary) VALUES
(1, 'Alice', 'HR', 5000),
(2, 'Bob', 'Admin', 6000),
(3, 'Charlie', 'Sales', 7000),
(4, 'David', 'IT', 6500),
(5, 'Eve', 'Sales', 8000),
(6, 'Frank', 'Marketing', 5500),
(7, 'Grace', 'IT', 6200),
(8, 'Hank', 'Admin', 5800);

SELECT department, COUNT(*) AS employee_count
FROM employees
WHERE department NOT IN ('HR', 'Admin')
GROUP BY department
ORDER BY employee_count DESC;


SELECT department, MAX(salary) AS highest_salary
FROM employees
GROUP BY department
ORDER BY highest_salary DESC;
