CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(12,2)
);

INSERT INTO employees (employee_id, name, department, salary) VALUES
(1, 'Alice', 'HR', 60000),
(2, 'Bob', 'HR', 55000),
(3, 'Charlie', 'IT', 95000),
(4, 'David', 'IT', 70000),
(5, 'Eve', 'Finance', 210000),
(6, 'Frank', 'Finance', 220000),
(7, 'Grace', 'Marketing', 90000),
(8, 'Helen', 'Admin', 45000),
(9, 'Ian', 'Finance', 80000),
(10, 'Jack', 'Marketing', 70000);

SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 100000
ORDER BY average_salary DESC;


INSERT INTO employees (employee_id, name, department, salary) VALUES
(11, 'Kyle', 'Admin', 500000),
(12, 'Laura', 'IT', 500000);

SELECT department, MAX(salary) AS max_salary
FROM employees
GROUP BY department
HAVING MAX(salary) = 500000
ORDER BY department;

SELECT department,
       COUNT(*) AS employee_count,
       SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING COUNT(*) > 1 AND SUM(salary) > 100000
ORDER BY total_salary DESC;

SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) BETWEEN 50000 AND 200000
ORDER BY avg_salary DESC;
