CREATE DATABASE employees;
USE employees;

CREATE TABLE employees; (
    ID INT PRIMARY KEY,
    ename VARCHAR(50),
    Age INT,
    Marks INT,
    City VARCHAR(50)
);

INSERT INTO employees (ID, Name, Age, Marks, City) VALUES
(1, 'Alice', 18, 85, 'Chennai'),
(2, 'Bob', 20, 67, 'Mumbai'),
(3, 'Charlie', 19, 45, 'Delhi'),
(4, 'David', 21, 92, 'Chennai'),
(5, 'Eva', 18, 75, 'Bangalore');

SELECT employees.name, departments.dept_name
FROM employees
INNER JOIN departments ON employees.dept_id = departments.id;
