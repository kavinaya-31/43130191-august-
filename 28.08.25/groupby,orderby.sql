CREATE TABLE worker (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(100),
    salary DECIMAL(10, 2)
);

INSERT INTO worker (id, name, department, salary) VALUES
(1, 'Alice', 'HR', 50000),
(2, 'Bob', 'IT', 70000),
(3, 'Charlie', 'HR', 45000),
(4, 'David', 'IT', 65000),
(5, 'Eva', 'Accounting', 60000),
(6, 'Frank', 'Accounting', 60000),
(7, 'Grace', 'IT', 40000);


SELECT department, SUM(salary) AS total_salary
FROM worker
GROUP BY department
ORDER BY department ASC;
SELECT SUM(salary) AS total_salary_all_workers
FROM worker;
